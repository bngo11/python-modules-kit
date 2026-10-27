# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="None https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/f8/9a/887535e477847f5159377ab35303923644840b13c0ca03c0a467f84d4680/pytest_asyncio-1.4.1.tar.gz -> pytest_asyncio-1.4.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest_asyncio-1.4.1"