# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Sphinx Doxygen renderer"
HOMEPAGE="None https://pypi.org/project/breathe/"
SRC_URI="https://files.pythonhosted.org/packages/40/1b/4d9c360eef294ebefa1a601c79e4247e8f93781e9e0019434ef5722c7e4f/breathe-5.0.0.tar.gz -> breathe-5.0.0.tar.gz"

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
S="${WORKDIR}/breathe-5.0.0"