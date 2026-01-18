# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Read the Docs theme for Sphinx"
HOMEPAGE="https://github.com/readthedocs/sphinx_rtd_theme https://pypi.org/project/sphinx-rtd-theme/"
SRC_URI="https://files.pythonhosted.org/packages/84/68/a1bfbf38c0f7bccc9b10bbf76b94606f64acb1552ae394f0b8285bfaea25/sphinx_rtd_theme-3.1.0.tar.gz -> sphinx_rtd_theme-3.1.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/sphinxcontrib-jquery[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/sphinx_rtd_theme-3.1.0"