# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="None https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/2c/de/80724f9b5b9eca1a654179cae6edc51aaa0a355a9834a736e2a188b91780/pytest_asyncio-1.5.0.tar.gz -> pytest_asyncio-1.5.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest_asyncio-1.5.0"