# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Functools like those found in stdlib"
HOMEPAGE="None https://pypi.org/project/jaraco.functools/"
SRC_URI="https://files.pythonhosted.org/packages/6c/1f/c23395957d41ccf27c4e535c3d334c4051e5395b3752057ba4cbaec35c56/jaraco_functools-4.6.0.tar.gz -> jaraco_functools-4.6.0.tar.gz"

DEPEND="dev-python/more-itertools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_functools-4.6.0"

distutils_enable_tests pytest
