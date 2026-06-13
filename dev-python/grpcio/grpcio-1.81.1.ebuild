# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="None https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/b0/b5/1ff353970a87eda4c98251e34d2dfd214abd4982dc89119c9252a2a482d2/grpcio-1.81.1.tar.gz -> grpcio-1.81.1.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.81.1"