# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Manipulation and analysis of geometric objects"
HOMEPAGE="None https://pypi.org/project/shapely/"
SRC_URI="https://files.pythonhosted.org/packages/ca/3c/2da625233f4e605155926566c0e7ea8dda361877f48e8b1655e53456f252/shapely-2.1.1.tar.gz -> shapely-2.1.1.tar.gz"

DEPEND="
	>=sci-libs/geos-3.5
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/shapely-2.1.1"