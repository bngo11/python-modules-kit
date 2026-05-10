# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Inline Matplotlib backend for Jupyter"
HOMEPAGE="None https://pypi.org/project/matplotlib-inline/"
SRC_URI="https://files.pythonhosted.org/packages/bd/c0/9f7c9a46090390368a4d7bcb76bb87a4a36c421e4c0792cdb53486ffac7a/matplotlib_inline-0.2.2.tar.gz -> matplotlib_inline-0.2.2.tar.gz"

DEPEND=""
RDEPEND="dev-python/traitlets[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/matplotlib_inline-0.2.2"