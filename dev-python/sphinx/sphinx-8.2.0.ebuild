# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Python documentation generator"
HOMEPAGE="None https://pypi.org/project/Sphinx/"
SRC_URI="https://files.pythonhosted.org/packages/81/46/08fe30fc7a6b0e8ff1f502e44133d3a1bd9453d7ab884c2ac7f0ef280920/sphinx-8.2.0.tar.gz -> sphinx-8.2.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	latex? (
		dev-texlive/texlive-latexextra
		dev-texlive/texlive-luatex
		app-text/dvipng
	)
	>dev-python/alabaster-0.8[${PYTHON_USEDEP}]
	dev-python/Babel[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/imagesize[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/snowballstemmer[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-4.4[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-applehelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-devhelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-htmlhelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-jsmath[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-qthelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-serializinghtml[${PYTHON_USEDEP}]"
IUSE="doc latex"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinx-8.2.0"

python_compile_all() {
	if use doc; then
		esetup.py build_sphinx
		HTML_DOCS=( "${BUILD_DIR}"/sphinx/html/. )
	fi
}
