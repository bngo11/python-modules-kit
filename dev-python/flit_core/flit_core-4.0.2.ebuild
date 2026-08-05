# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Simplified packaging of Python modules (core module)"
HOMEPAGE="None https://pypi.org/project/flit-core/"
SRC_URI="https://files.pythonhosted.org/packages/46/ef/34533186e76c526d9ec17a1ad9a10c7354cbfb20f51583cc36dfe4bdccd0/flit_core-4.0.2.tar.gz -> flit_core-4.0.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/flit_core-4.0.2"