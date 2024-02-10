# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3+ pypy3 )
PYTHON_COMPAT=( "${PYTHON_TESTED[@]}" )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1 virtualx

DESCRIPTION="An asynchronous networking framework written in Python"
HOMEPAGE="
	https://twisted.org/
	https://github.com/twisted/twisted/
	https://pypi.org/project/Twisted/
"
SRC_URI="https://files.pythonhosted.org/packages/6e/d3/077ece8f12cd82419bd68bb34cf4538c4df5bb9202835e7a18358223e537/twisted-23.10.0.tar.gz -> twisted-23.10.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="conch http2 serial ssl test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	>=dev-python/automat-0.8.0[${PYTHON_USEDEP}]
	>=dev-python/constantly-15.1[${PYTHON_USEDEP}]
	>=dev-python/hyperlink-17.1.1[${PYTHON_USEDEP}]
	>=dev-python/incremental-22.10.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.2.0[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-5[${PYTHON_USEDEP}]
	conch? (
		>=dev-python/appdirs-1.4.0[${PYTHON_USEDEP}]
		>=dev-python/bcrypt-3.0.0[${PYTHON_USEDEP}]
		>=dev-python/cryptography-3.3[${PYTHON_USEDEP}]
		dev-python/pyasn1[${PYTHON_USEDEP}]
	)
	http2? (
		<dev-python/h2-5.0[${PYTHON_USEDEP}]
		>=dev-python/h2-3.0.0[${PYTHON_USEDEP}]
		<dev-python/priority-2.0[${PYTHON_USEDEP}]
		>=dev-python/priority-1.1.0[${PYTHON_USEDEP}]
	)
	serial? (
		>=dev-python/pyserial-3.0[${PYTHON_USEDEP}]
	)
	ssl? (
		>=dev-python/pyopenssl-21.0.0[${PYTHON_USEDEP}]
		>=dev-python/service_identity-18.1.0[${PYTHON_USEDEP}]
		>=dev-python/idna-2.4[${PYTHON_USEDEP}]
	)
"
BDEPEND="
	>=dev-python/hatch-fancy-pypi-readme-22.5.0[${PYTHON_USEDEP}]
	>=dev-python/incremental-22.10.0[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		$(python_gen_cond_dep '
			>=dev-python/appdirs-1.4.0[${PYTHON_USEDEP}]
			>=dev-python/bcrypt-3.0.0[${PYTHON_USEDEP}]
			>=dev-python/constantly-15.1.0[${PYTHON_USEDEP}]
			<dev-python/cython-test-exception-raiser-2[${PYTHON_USEDEP}]
			>=dev-python/cython-test-exception-raiser-1.0.2[${PYTHON_USEDEP}]
			>=dev-python/idna-2.4[${PYTHON_USEDEP}]
			>=dev-python/hypothesis-6.56[${PYTHON_USEDEP}]
			dev-python/pyasn1[${PYTHON_USEDEP}]
			>=dev-python/pyhamcrest-2[${PYTHON_USEDEP}]
			>=dev-python/pyserial-3.0[${PYTHON_USEDEP}]
			virtual/openssh
			ssl? (
				>=dev-python/pyopenssl-21.0.0[${PYTHON_USEDEP}]
				>=dev-python/service-identity-18.1.0[${PYTHON_USEDEP}]
			)
		' "${PYTHON_TESTED[@]}")
	)
"

python_prepare_all() {
	# upstream test for making releases; not very useful and requires
	# sphinx (including on py2)
	rm src/twisted/python/test/test_release.py || die

	# multicast tests fail within network-sandbox
	sed -e 's:test_joinLeave:_&:' \
		-e 's:test_loopback:_&:' \
		-e 's:test_multiListen:_&:' \
		-e 's:test_multicast:_&:' \
		-i src/twisted/test/test_udp.py || die

	distutils-r1_python_prepare_all
}

src_test() {
	# the test suite handles missing file & failing ioctl()s gracefully
	# but not permission errors from sandbox
	addwrite /dev/net/tun
	virtx distutils-r1_src_test
}

python_test() {
	if ! has "${EPYTHON}" "${PYTHON_TESTED[@]/_/.}"; then
		einfo "Skipping tests on ${EPYTHON} (xfail)"
		return
	fi

	"${EPYTHON}" -m twisted.trial twisted ||
		die "Tests failed with ${EPYTHON}"
}

python_install() {
	distutils-r1_python_install

	# own the dropin.cache so we don't leave orphans
	> "${D}$(python_get_sitedir)"/twisted/plugins/dropin.cache || die
}

python_install_all() {
	distutils-r1_python_install_all

	newconfd "${FILESDIR}/twistd.conf" twistd
	newinitd "${FILESDIR}/twistd.init" twistd
}

pkg_postinst() {
	if [[ -z ${ROOT} ]]; then
		python_foreach_impl python_postinst
	fi
}

python_postrm() {
	rm -f "${ROOT}$(python_get_sitedir)/twisted/plugins/dropin.cache" || die
}

pkg_postrm() {
	# if we're removing the last version, remove the cache file
	if [[ ! ${REPLACING_VERSIONS} ]]; then
		python_foreach_impl python_postrm
	fi
}