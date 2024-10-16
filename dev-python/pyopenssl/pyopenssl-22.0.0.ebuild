# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1 flag-o-matic

MY_PN=pyOpenSSL
MY_P=${MY_PN}-${PV}

DESCRIPTION="Python interface to the OpenSSL library"
HOMEPAGE="
	http://pyopenssl.sourceforge.net/
	https://launchpad.net/pyopenssl
	https://pypi.org/project/pyOpenSSL/
"
SRC_URI="https://files.pythonhosted.org/packages/35/d3/d6a9610f19d943e198df502ae660c6b5acf84cc3bc421a2aa3c0fb6b21d1/pyOpenSSL-22.0.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="doc examples test"

RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.3[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	doc? (
		dev-python/sphinx[${PYTHON_USEDEP}]
		dev-python/sphinx_rtd_theme[${PYTHON_USEDEP}]
	)
	test? (
		virtual/python-cffi[${PYTHON_USEDEP}]
		dev-python/flaky[${PYTHON_USEDEP}]
		dev-python/pretend[${PYTHON_USEDEP}]
		>=dev-python/pytest-3.0.1[${PYTHON_USEDEP}]
	)"

S=${WORKDIR}/${MY_P}

python_prepare_all() {
	# Requires network access
	sed -i -e 's/test_set_default_verify_paths/_&/' tests/test_ssl.py || die
	distutils-r1_python_prepare_all
}

python_compile_all() {
	use doc && emake -C doc html
}

python_test() {
	TZ=UTC py.test -v || die "Testing failed with ${EPYTHON}" # Fixes bug #627530
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/_build/html/. )
	if use examples ; then
		docinto examples
		dodoc -r examples/*
		docompress -x /usr/share/doc/${PF}/examples
	fi

	distutils-r1_python_install_all
}