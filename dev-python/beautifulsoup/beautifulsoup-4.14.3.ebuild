# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pythonic idioms for iterating, searching, and modifying an HTML/XML parse tree"
HOMEPAGE="https://www.crummy.com/software/BeautifulSoup/bs4/"
SRC_URI="https://files.pythonhosted.org/packages/c3/b0/1c6a16426d389813b48d95e26898aff79abbde42ad353958ad95cc8c9b21/beautifulsoup4-4.14.3.tar.gz -> beautifulsoup4-4.14.3.tar.gz"

DEPEND=""
RDEPEND="
	!dev-python/beautifulsoup:4
	dev-python/soupsieve[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/beautifulsoup4-4.14.3"