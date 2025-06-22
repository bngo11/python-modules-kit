# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface to Graphviz's Dot"
HOMEPAGE="None https://pypi.org/project/pydot/"
SRC_URI="https://files.pythonhosted.org/packages/50/35/b17cb89ff865484c6a20ef46bf9d95a5f07328292578de0b295f4a6beec2/pydot-4.0.1.tar.gz -> pydot-4.0.1.tar.gz"

DEPEND=""
RDEPEND="
	media-gfx/graphviz
	>=dev-python/pyparsing-2.1.4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pydot-4.0.1"