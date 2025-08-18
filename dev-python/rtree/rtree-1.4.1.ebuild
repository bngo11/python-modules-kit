# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="R-Tree spatial index for Python GIS"
HOMEPAGE="None https://pypi.org/project/rtree/"
SRC_URI="https://files.pythonhosted.org/packages/95/09/7302695875a019514de9a5dd17b8320e7a19d6e7bc8f85dcfb79a4ce2da3/rtree-1.4.1.tar.gz -> rtree-1.4.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.4.1"