# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python package for creating and manipulating graphs and networks"
HOMEPAGE="None https://pypi.org/project/networkx/"
SRC_URI="https://files.pythonhosted.org/packages/fd/1d/06475e1cd5264c0b870ea2cc6fdb3e37177c1e565c43f56ff17a10e3937f/networkx-3.4.2.tar.gz -> networkx-3.4.2.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/networkx-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/networkx-3.4.2"