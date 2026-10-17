# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python Imaging Library (fork)"
HOMEPAGE="https://python-pillow.org/"
SRC_URI="https://files.pythonhosted.org/packages/ce/a4/9cc30690a394a8305e8be4c9036aa16d0dfddadd09079860b582f562496d/pillow-13.0.0.tar.gz -> pillow-13.0.0.tar.gz"

DEPEND="
	imagequant? ( media-gfx/libimagequant )
	jpeg? ( media-libs/libjpeg-turbo )
	jpeg2k? ( media-libs/openjpeg )
	lcms? ( media-libs/lcms )
	tiff? ( media-libs/tiff )
	truetype? ( media-libs/freetype )
	webp? ( media-libs/libwebp )
	xcb? ( x11-libs/libxcb )
	zlib? ( sys-libs/zlib )"
RDEPEND="
	dev-python/olefile[${PYTHON_USEDEP}]
	dev-python/pybind11[${PYTHON_USEDEP}]"
IUSE="+jpeg examples imagequant jpeg2k lcms test tiff tk truetype webp xcb zlib"
SLOT="0"
LICENSE="HPND"
KEYWORDS="*"
S="${WORKDIR}/pillow-13.0.0"