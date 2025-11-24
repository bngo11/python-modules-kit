# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python package for creating and manipulating graphs and networks"
HOMEPAGE="None https://pypi.org/project/networkx/"
SRC_URI="https://files.pythonhosted.org/packages/e8/fc/7b6fd4d22c8c4dc5704430140d8b3f520531d4fe7328b8f8d03f5a7950e8/networkx-3.6.tar.gz -> networkx-3.6.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/networkx-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/networkx-3.6"