# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

MY_PN="A${PN:1}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Self-service finite-state machines for the programmer on the go"
HOMEPAGE="https://github.com/glyph/automat https://pypi.org/project/Automat/"
SRC_URI="https://files.pythonhosted.org/packages/80/c5/82c63bad570f4ef745cc5c2f0713c8eddcd07153b4bee7f72a8dc9f9384b/Automat-20.2.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

RDEPEND="
	>=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
BDEPEND="
	${RDEPEND}
	dev-python/m2r[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests pytest

python_prepare_all() {
	if use test ; then
		# Remove since this is upstream benchmarking tests
		rm -r benchmark || die "FAILED to remove benchmark tests"
	fi

	# avoid a setuptools_scm dependency
	sed -r -i "s:use_scm_version=True:version='${PV}': ;
		s:[\"']setuptools[_-]scm[\"'](,|)::" setup.py || die

	distutils-r1_python_prepare_all
}

python_install_all() {
	if use examples; then
		docinto examples
		dodoc docs/examples/*.py
	fi

	distutils-r1_python_install_all
}

pkg_postinst() {
	einfo "For additional visualization functionality install these optional dependencies"
	einfo "    >=dev-python/twisted-16.1.1"
	einfo "    media-gfx/graphviz[python]"
}