# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="http client/server for asyncio"
HOMEPAGE="https://pypi.org/project/aiohttp/"
SRC_URI="https://files.pythonhosted.org/packages/99/f5/90ede947a3ce2d6de1614799f5fea4e93c19b6520a59dc5d2f64123b032f/aiohttp-3.7.4.post0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"
RESTRICT="!test? ( test )"

CDEPEND="
	>=dev-python/async_timeout-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.0[${PYTHON_USEDEP}]
	dev-python/idna-ssl[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
	doc? (
		>=dev-python/alabaster-0.6.2[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-asyncio[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-blockdiag[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-newsfeed[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-spelling[${PYTHON_USEDEP}]
		dev-python/sphinx[${PYTHON_USEDEP}]
		dev-python/sphinx-aiohttp-theme[${PYTHON_USEDEP}]
	)
	test? (
		${CDEPEND}
		dev-python/async_generator[${PYTHON_USEDEP}]
		dev-python/brotlipy[${PYTHON_USEDEP}]
		>=dev-python/pytest-3.4.0[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
		dev-python/pytest-timeout[${PYTHON_USEDEP}]
		dev-python/trustme[${PYTHON_USEDEP}]
		www-servers/gunicorn[${PYTHON_USEDEP}]
	)
"
RDEPEND="${CDEPEND}"
S="${WORKDIR}/aiohttp-3.7.4.post0"

DOCS=( CHANGES.rst CONTRIBUTORS.txt README.rst )

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	pytest -vv || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )

	distutils-r1_python_install_all
}