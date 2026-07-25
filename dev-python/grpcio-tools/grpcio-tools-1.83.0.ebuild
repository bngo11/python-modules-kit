# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="None https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/c1/b1/50b17b3a2ba8970dbb00b2035a4df218bc6ec88d2d77fc7da4e42e1c7b19/grpcio_tools-1.83.0.tar.gz -> grpcio_tools-1.83.0.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.83.0"