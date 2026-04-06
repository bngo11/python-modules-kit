# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="None https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/94/c8/1223f29c84a143ae9a56c084fc96894de0ba84b6e8d60a26241abd81d278/grpcio_tools-1.80.0.tar.gz -> grpcio_tools-1.80.0.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.80.0"