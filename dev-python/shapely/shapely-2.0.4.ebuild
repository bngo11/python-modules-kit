# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Manipulation and analysis of geometric objects"
HOMEPAGE="None https://pypi.org/project/shapely/"
SRC_URI="https://files.pythonhosted.org/packages/49/7e/816fd1c135b062c80b72e17b7330d9a719cd413158afa580f4aaccf59aa9/shapely-2.0.4.tar.gz -> shapely-2.0.4.tar.gz"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/shapely-2.0.4"