# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="xcffib is the XCB binding for python"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/f6/35/66ce426a1dea2dc8ebf7035fd0ebb4ab5f47453f12087ea540fe7a425ff5/xcffib-1.7.1.tar.gz -> xcffib-1.7.1.tar.gz"

DEPEND="
	x11-libs/libxcb"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-1.7.1"