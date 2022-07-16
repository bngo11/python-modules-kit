# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.sphinx-doc.org/ https://pypi.org/project/Sphinx/"
SRC_URI="https://files.pythonhosted.org/packages/83/5f/0ebf0c94dffd7a848ebfeafc0d3147a784afffb44e2c6fcaeab7eadd67ad/Sphinx-5.0.2.tar.gz -> Sphinx-5.0.2.tar.gz
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	latex? (
		dev-texlive/texlive-latexextra
		dev-texlive/texlive-luatex
		app-text/dvipng
	)
	<dev-python/alabaster-0.8[${PYTHON_USEDEP}]
	dev-python/Babel[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/imagesize[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/snowballstemmer[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-applehelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-devhelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-jsmath[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-htmlhelp[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-serializinghtml[${PYTHON_USEDEP}]
	dev-python/sphinxcontrib-qthelp[${PYTHON_USEDEP}]
	dev-python/sphinx_rtd_theme[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-4.4[${PYTHON_USEDEP}]"

IUSE="latex doc"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinx-5.0.2"

S="${WORKDIR}/${P^}"

PATCHES=(
	"$FILESDIR"/sphinx-4.2.0-highlight-toggle.patch
)

# FL-8369: relax various deps
src_prepare() {
	for dep in {docutils,MarkupSafe,Jinja2}; do
		sed -i -e '/^${dep}/c ${dep}' Sphinx.egg-info/requires.txt || die
		sed -i -e "s/'${dep}.*$/'${dep}',/" setup.py || die
	done
	distutils-r1_src_prepare
}

python_compile_all() {
	if use doc; then
		esetup.py build_sphinx
		HTML_DOCS=( "${BUILD_DIR}"/sphinx/html/. )
	fi
}
