# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="None https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/b7/48/af6173dbca4454f4637a4678b67f52ca7e0c1ed7d5894d89d434fecede05/grpcio-1.80.0.tar.gz -> grpcio-1.80.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.80.0"