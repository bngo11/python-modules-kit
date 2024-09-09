# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Collection of plugins for markdown-it-py"
HOMEPAGE="None https://pypi.org/project/mdit-py-plugins/"
SRC_URI="https://files.pythonhosted.org/packages/19/03/a2ecab526543b152300717cf232bb4bb8605b6edb946c845016fa9c9c9fd/mdit_py_plugins-0.4.2.tar.gz -> mdit_py_plugins-0.4.2.tar.gz"

DEPEND=""
RDEPEND="<dev-python/markdown-it-py-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mdit_py_plugins-0.4.2"