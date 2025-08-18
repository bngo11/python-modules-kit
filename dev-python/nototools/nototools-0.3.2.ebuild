# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Noto fonts support tools and scripts plus web site generation"
HOMEPAGE="https://github.com/googlefonts/nototools"
SRC_URI="https://files.pythonhosted.org/packages/97/19/4443c06c12efd2169bd896acb1764be72da162cd1532669d4dc68615d0f0/notofonttools-0.3.2.tar.gz -> notofonttools-0.3.2.tar.gz"

DEPEND=""
RDEPEND="
	media-gfx/scour
	dev-python/booleanOperations[${PYTHON_USEDEP}]
	dev-python/defcon[${PYTHON_USEDEP}]
	dev-python/fonttools[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/pyclipper[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 OFL-1.1"
KEYWORDS="*"
S="${WORKDIR}/notofonttools-0.3.2"