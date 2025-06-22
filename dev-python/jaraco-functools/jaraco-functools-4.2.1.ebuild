# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functools like those found in stdlib"
HOMEPAGE="None https://pypi.org/project/jaraco.functools/"
SRC_URI="https://files.pythonhosted.org/packages/49/1c/831faaaa0f090b711c355c6d8b2abf277c72133aab472b6932b03322294c/jaraco_functools-4.2.1.tar.gz -> jaraco_functools-4.2.1.tar.gz"

DEPEND="dev-python/more-itertools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_functools-4.2.1"

distutils_enable_tests pytest
