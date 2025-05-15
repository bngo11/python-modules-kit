# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Dynamic version generation"
HOMEPAGE="https://github.com/mtkennerly/dunamai https://pypi.org/project/dunamai/"
SRC_URI="https://files.pythonhosted.org/packages/54/22/7f46b0146ef614cd6f80e4bcb188dabe33e90b4e0af028e16f597f5826ad/dunamai-1.24.1.tar.gz -> dunamai-1.24.1.tar.gz"

DEPEND="
	>=dev-python/packaging-20.9[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/poetry-core-1.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/dunamai-1.24.1"

distutils_enable_tests pytest
