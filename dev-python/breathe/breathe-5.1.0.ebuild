# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Sphinx Doxygen renderer"
HOMEPAGE="None https://pypi.org/project/breathe/"
SRC_URI="https://files.pythonhosted.org/packages/7d/7f/c64ce129d35f05bac6b3d044ee2d3aea24b0c819f2f57cd34020b74d5efc/breathe-5.1.0.tar.gz -> breathe-5.1.0.tar.gz"

DEPEND=""
RDEPEND="
	app-doc/doxygen
	dev-texlive/texlive-bibtexextra
	dev-texlive/texlive-fontsextra
	dev-texlive/texlive-fontutils
	dev-texlive/texlive-latex
	dev-texlive/texlive-latexextra
	dev-python/docutils[${PYTHON_USEDEP}]
	>=dev-python/sphinx-3.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/breathe-5.1.0"