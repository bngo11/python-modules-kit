# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pytest support for asyncio"
HOMEPAGE="None https://pypi.org/project/pytest-asyncio/"
SRC_URI="https://files.pythonhosted.org/packages/73/7f/c60a4338420b33453d4f814ac0c930abd399f162b9bdd21af4b9e363037f/pytest_asyncio-1.4.1.post1.tar.gz -> pytest_asyncio-1.4.1.post1.tar.gz"

DEPEND=""
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pytest_asyncio-1.4.1.post1"