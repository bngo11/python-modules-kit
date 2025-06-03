# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="None https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/d8/77/e720e968f7a19ea1e34f839c621f9ea2512235dda9c344a10c1dd902085b/gphoto2-2.6.0.tar.gz -> gphoto2-2.6.0.tar.gz"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.6.0"