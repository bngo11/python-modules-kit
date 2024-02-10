# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Python web framework and asynchronous networking library"
HOMEPAGE="
	https://www.tornadoweb.org/
	https://github.com/tornadoweb/tornado/
	https://pypi.org/project/tornado/
"
SRC_URI="https://files.pythonhosted.org/packages/bd/a2/ea124343e3b8dd7712561fe56c4f92eda26865f5e1040b289203729186f2/tornado-6.4.tar.gz -> tornado-6.4.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/twisted-16.0.0[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		${RDEPEND}
		$(python_gen_cond_dep '
			>=dev-python/pycurl-7.19.3.1[${PYTHON_USEDEP}]
		' 'python*')
	)
"

PATCHES=(
	"${FILESDIR}"/${PN}-6.3.2-test-timeout-increase.patch
	"${FILESDIR}"/${PN}-6.3.2-ignore-deprecationwarning.patch
)

src_prepare() {
	# network-sandbox? ipv6?
	sed -i -e 's:test_localhost:_&:' \
		tornado/test/netutil_test.py || die

	distutils-r1_src_prepare
}

python_test() {
	local -x ASYNC_TEST_TIMEOUT=60
	# Avoid time-sensitive tests
	# https://github.com/tornadoweb/tornado/blob/10974e6ebee80a26a2a65bb9bd715cf858fafde5/tornado/test/util.py#L19
	local -x TRAVIS=1
	local -x NO_NETWORK=1

	cd "${T}" || die
	"${EPYTHON}" -m tornado.test.runtests --verbose ||
		die "tests failed under ${EPYTHON}"
}