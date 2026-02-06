# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="None https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/8b/d1/cbefe328653f746fd319c4377836a25ba64226e41c6a1d7d5cdbc87a459f/grpcio_tools-1.78.0.tar.gz -> grpcio_tools-1.78.0.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.78.0"