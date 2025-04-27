# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="xcffib is the XCB binding for python"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/86/ac/bce8b26ebe724025f0f3fb4f88e920eb0a126c13ff63cecb47144b445539/xcffib-1.8.0.tar.gz -> xcffib-1.8.0.tar.gz"

DEPEND="
	x11-libs/libxcb"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-1.8.0"