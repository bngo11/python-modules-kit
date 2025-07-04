# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="aiosignal: a list of registered asynchronous callbacks"
HOMEPAGE="https://github.com/aio-libs/aiosignal https://pypi.org/project/aiosignal/"
SRC_URI="https://files.pythonhosted.org/packages/61/62/06741b579156360248d1ec624842ad0edf697050bbaf7c3e46394e106ad1/aiosignal-1.4.0.tar.gz -> aiosignal-1.4.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/frozenlist[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiosignal-1.4.0"