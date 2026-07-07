# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="None https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/2c/c2/aa8fa0004d9b0350016464824427f6ee4ddc9b407ccf05fd0044e94a1652/grpcio_tools-1.82.0.tar.gz -> grpcio_tools-1.82.0.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.82.0"