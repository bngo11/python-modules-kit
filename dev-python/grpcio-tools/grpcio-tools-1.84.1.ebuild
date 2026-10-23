# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="None https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/aa/f8/d23cf09b5a05684958152412d1bf7e61e9fe1938f1cf90959ae291498a1b/grpcio_tools-1.84.1.tar.gz -> grpcio_tools-1.84.1.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.84.1"