# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="None https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/1f/de/de568532d9907552700f80dcec38219d8d298ad9e71f5e0a095abaf2761e/grpcio-1.78.1.tar.gz -> grpcio-1.78.1.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.78.1"