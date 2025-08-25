# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functools like those found in stdlib"
HOMEPAGE="None https://pypi.org/project/jaraco.functools/"
SRC_URI="https://files.pythonhosted.org/packages/f7/ed/1aa2d585304ec07262e1a83a9889880701079dde796ac7b1d1826f40c63d/jaraco_functools-4.3.0.tar.gz -> jaraco_functools-4.3.0.tar.gz"

DEPEND="dev-python/more-itertools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_functools-4.3.0"

distutils_enable_tests pytest
