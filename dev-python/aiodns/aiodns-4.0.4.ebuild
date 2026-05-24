# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="None https://pypi.org/project/aiodns/"
SRC_URI="https://files.pythonhosted.org/packages/9b/22/a2d928e0e42baad0471d12ec44c71152ac870486e8298dddb2893b888c29/aiodns-4.0.4.tar.gz -> aiodns-4.0.4.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/aiodns-4.0.4"