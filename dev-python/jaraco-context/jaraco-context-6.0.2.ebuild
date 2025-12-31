# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Useful decorators and context managers"
HOMEPAGE="None https://pypi.org/project/jaraco.context/"
SRC_URI="https://files.pythonhosted.org/packages/8d/7d/41acf8e22d791bde812cb6c2c36128bb932ed8ae066bcb5e39cb198e8253/jaraco_context-6.0.2.tar.gz -> jaraco_context-6.0.2.tar.gz"

DEPEND="dev-python/backports-tarfile[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_context-6.0.2"

distutils_enable_tests pytest
