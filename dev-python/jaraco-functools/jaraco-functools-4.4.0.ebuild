# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functools like those found in stdlib"
HOMEPAGE="None https://pypi.org/project/jaraco.functools/"
SRC_URI="https://files.pythonhosted.org/packages/0f/27/056e0638a86749374d6f57d0b0db39f29509cce9313cf91bdc0ac4d91084/jaraco_functools-4.4.0.tar.gz -> jaraco_functools-4.4.0.tar.gz"

DEPEND="dev-python/more-itertools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_functools-4.4.0"

distutils_enable_tests pytest
