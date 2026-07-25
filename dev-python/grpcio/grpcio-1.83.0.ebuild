# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="None https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/0c/98/304898ac4e04e2d5e4e4c2eadc178b1f2a16d5f4bc2f91306c87d64680b9/grpcio-1.83.0.tar.gz -> grpcio-1.83.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.83.0"