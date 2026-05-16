# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="None https://pypi.org/project/aiodns/"
SRC_URI="https://files.pythonhosted.org/packages/7f/70/2047b454e8210a19876c263b801a4a1b3649f48af044bd076be468a8bd65/aiodns-4.0.3.tar.gz -> aiodns-4.0.3.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/aiodns-4.0.3"