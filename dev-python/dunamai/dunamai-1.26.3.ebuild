# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Dynamic version generation"
HOMEPAGE="https://github.com/mtkennerly/dunamai https://pypi.org/project/dunamai/"
SRC_URI="https://files.pythonhosted.org/packages/c5/62/edf5352d8ce1371129ccfe971e6de3a1ce4dc7f9bdc80390fb79856b78d4/dunamai-1.26.3.tar.gz -> dunamai-1.26.3.tar.gz"

DEPEND="
	>=dev-python/packaging-20.9[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/poetry-core-1.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/dunamai-1.26.3"

distutils_enable_tests pytest
