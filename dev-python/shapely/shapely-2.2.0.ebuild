# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="meson-python"
inherit distutils-r1

DESCRIPTION="Manipulation and analysis of geometric objects"
HOMEPAGE="None https://pypi.org/project/shapely/"
SRC_URI="https://files.pythonhosted.org/packages/f3/ab/924b6e202f796d270a3041a230151f7908db5ea48c74effe6f8023e9bd05/shapely-2.2.0.tar.gz -> shapely-2.2.0.tar.gz"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/shapely-2.2.0"