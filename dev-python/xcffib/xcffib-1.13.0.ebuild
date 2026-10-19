# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="xcffib is the XCB binding for python"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/3c/7b/2e2329633dfb89548eb6b61bac29c4b3cc08a468e583202c4dd4ae3e361d/xcffib-1.13.0.tar.gz -> xcffib-1.13.0.tar.gz"

DEPEND="
	x11-libs/libxcb"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-1.13.0"