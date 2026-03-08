# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Useful decorators and context managers"
HOMEPAGE="None https://pypi.org/project/jaraco.context/"
SRC_URI="https://files.pythonhosted.org/packages/27/7b/c3081ff1af947915503121c649f26a778e1a2101fd525f74aef997d75b7e/jaraco_context-6.1.1.tar.gz -> jaraco_context-6.1.1.tar.gz"

DEPEND="dev-python/backports-tarfile[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_context-6.1.1"

distutils_enable_tests pytest
