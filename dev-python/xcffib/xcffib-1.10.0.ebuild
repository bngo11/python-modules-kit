# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="xcffib is the XCB binding for python"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/4a/8d/ebf61e169844f7a80d9f7faa602396ead94f8ac5dac1ad989fa129615dcb/xcffib-1.10.0.tar.gz -> xcffib-1.10.0.tar.gz"

DEPEND="
	x11-libs/libxcb"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-1.10.0"