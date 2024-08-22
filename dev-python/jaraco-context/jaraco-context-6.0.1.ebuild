# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Useful decorators and context managers"
HOMEPAGE="None https://pypi.org/project/jaraco.context/"
SRC_URI="https://files.pythonhosted.org/packages/df/ad/f3777b81bf0b6e7bc7514a1656d3e637b2e8e15fab2ce3235730b3e7a4e6/jaraco_context-6.0.1.tar.gz -> jaraco_context-6.0.1.tar.gz"

DEPEND="dev-python/backports-tarfile[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/${P/-/.}"

distutils_enable_tests pytest
