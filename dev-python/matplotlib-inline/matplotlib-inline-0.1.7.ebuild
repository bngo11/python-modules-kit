# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Inline Matplotlib backend for Jupyter"
HOMEPAGE="None https://pypi.org/project/matplotlib-inline/"
SRC_URI="https://files.pythonhosted.org/packages/99/5b/a36a337438a14116b16480db471ad061c36c3694df7c2084a0da7ba538b7/matplotlib_inline-0.1.7.tar.gz -> matplotlib_inline-0.1.7.tar.gz"

DEPEND=""
RDEPEND="dev-python/traitlets[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/matplotlib_inline-0.1.7"