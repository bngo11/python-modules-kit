# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Collection of plugins for markdown-it-py"
HOMEPAGE="None https://pypi.org/project/mdit-py-plugins/"
SRC_URI="https://files.pythonhosted.org/packages/00/6c/79c52651b22b64dba5c7bbabd7a294cc410bfb2353250dc8ade44d7d8ad8/mdit_py_plugins-0.4.1.tar.gz -> mdit_py_plugins-0.4.1.tar.gz"

DEPEND=""
RDEPEND="<dev-python/markdown-it-py-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mdit_py_plugins-0.4.1"