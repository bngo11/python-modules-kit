# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python Imaging Library (fork)"
HOMEPAGE="https://python-pillow.org/"
SRC_URI="https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz -> pillow-12.1.1.tar.gz"

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
S="${WORKDIR}/pillow-12.1.1"