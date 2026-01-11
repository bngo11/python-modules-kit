# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="https://github.com/saghul/aiodns https://pypi.org/project/aiodns/"
SRC_URI="https://files.pythonhosted.org/packages/10/da/97235e953109936bfeda62c1f9f1a7c5652d4dc49f2b5911f9ae1043afa9/aiodns-4.0.0.tar.gz -> aiodns-4.0.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/aiodns-4.0.0"