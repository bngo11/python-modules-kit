# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functools like those found in stdlib"
HOMEPAGE="None https://pypi.org/project/jaraco.functools/"
SRC_URI="https://files.pythonhosted.org/packages/03/b1/6ca3c2052e584e9908a2c146f00378939b3c51b839304ab8ef4de067f042/jaraco_functools-4.0.2.tar.gz -> jaraco_functools-4.0.2.tar.gz"

DEPEND="dev-python/more-itertools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/jaraco_functools-4.0.2"

distutils_enable_tests pytest
