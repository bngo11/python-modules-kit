# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

MY_PN="${PN/-/.}"
MY_PN="${MY_PN//-/_}"
DESCRIPTION="Backport of functools.lru_cache from Python 3.3"
HOMEPAGE="https://github.com/jaraco/backports.functools_lru_cache"
SRC_URI="https://files.pythonhosted.org/packages/95/9f/122a41912932c77d5b8e6cab6bd456e6270211a3ed7248a80c235179a012/backports.functools_lru_cache-1.6.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"

RDEPEND="dev-python/backports[${PYTHON_USEDEP}]"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-1.15.0[${PYTHON_USEDEP}]
	doc? (
		>=dev-python/jaraco-packaging-3.2[${PYTHON_USEDEP}]
		dev-python/rst-linker[${PYTHON_USEDEP}]
		dev-python/sphinx[${PYTHON_USEDEP}]
	)
	test? (
		>=dev-python/pytest-2.8[${PYTHON_USEDEP}]
	)
"

S="${WORKDIR}/${MY_PN}-${PV}"

python_compile_all() {
	if use doc; then
		cd docs || die
		sphinx-build . _build/html || die
		HTML_DOCS=( docs/_build/html/. )
	fi
}

python_test() {
	PYTHONPATH=. py.test || die "tests failed with ${EPYTHON}"
}

python_install() {
	# avoid a collision with dev-python/backports
	rm "${BUILD_DIR}"/lib/backports/__init__.py || die
	distutils-r1_python_install --skip-build
}