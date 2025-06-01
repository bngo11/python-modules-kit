# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python package for creating and manipulating graphs and networks"
HOMEPAGE="None https://pypi.org/project/networkx/"
SRC_URI="https://files.pythonhosted.org/packages/6c/4f/ccdb8ad3a38e583f214547fd2f7ff1fc160c43a75af88e6aec213404b96a/networkx-3.5.tar.gz -> networkx-3.5.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/networkx-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/networkx-3.5"