# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Useful decorators and context managers"
HOMEPAGE="https://github.com/jaraco/jaraco.context https://pypi.org/project/jaraco.context/"
SRC_URI="https://files.pythonhosted.org/packages/c9/60/e83781b07f9a66d1d102a0459e5028f3a7816fdd0894cba90bee2bbbda14/jaraco.context-5.3.0.tar.gz -> jaraco.context-5.3.0.tar.gz"

DEPEND="dev-python/backports-tarfile[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/jaraco-context-5.3.0"

distutils_enable_tests pytest
