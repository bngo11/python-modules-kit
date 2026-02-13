# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Collection of plugins for markdown-it-py"
HOMEPAGE="None https://pypi.org/project/mdit-py-plugins/"
SRC_URI="https://files.pythonhosted.org/packages/b2/fd/a756d36c0bfba5f6e39a1cdbdbfdd448dc02692467d83816dff4592a1ebc/mdit_py_plugins-0.5.0.tar.gz -> mdit_py_plugins-0.5.0.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/markdown-it-py-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mdit_py_plugins-0.5.0"