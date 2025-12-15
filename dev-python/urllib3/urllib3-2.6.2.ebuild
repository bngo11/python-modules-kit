# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE="None https://pypi.org/project/urllib3/"
SRC_URI="https://files.pythonhosted.org/packages/1e/24/a2a2ed9addd907787d7aa0355ba36a6cadf1768b934c652ea78acbd59dcd/urllib3-2.6.2.tar.gz -> urllib3-2.6.2.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	!>=dev-python/urllib3-2
	!dev-python/urllib3-compat"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/urllib3-2.6.2"