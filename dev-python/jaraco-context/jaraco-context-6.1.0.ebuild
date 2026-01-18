# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Useful decorators and context managers"
HOMEPAGE="None https://pypi.org/project/jaraco.context/"
SRC_URI="https://files.pythonhosted.org/packages/cb/9c/a788f5bb29c61e456b8ee52ce76dbdd32fd72cd73dd67bc95f42c7a8d13c/jaraco_context-6.1.0.tar.gz -> jaraco_context-6.1.0.tar.gz"

DEPEND="dev-python/backports-tarfile[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/jaraco_context-6.1.0"

distutils_enable_tests pytest
