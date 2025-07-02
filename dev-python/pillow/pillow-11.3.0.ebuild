# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python Imaging Library (fork)"
HOMEPAGE="https://python-pillow.org/"
SRC_URI="https://files.pythonhosted.org/packages/f3/0d/d0d6dea55cd152ce3d6767bb38a8fc10e33796ba4ba210cbab9354b6d238/pillow-11.3.0.tar.gz -> pillow-11.3.0.tar.gz"

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
RDEPEND="dev-python/olefile[${PYTHON_USEDEP}]"
IUSE="+jpeg examples imagequant jpeg2k lcms test tiff tk truetype webp xcb zlib"
SLOT="0"
LICENSE="HPND"
KEYWORDS="*"
S="${WORKDIR}/pillow-11.3.0"