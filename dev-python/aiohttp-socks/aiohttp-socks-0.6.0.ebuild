# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="SOCKS proxy connector for aiohttp"
HOMEPAGE="https://pypi.org/project/aiohttp-socks/"
SRC_URI="https://files.pythonhosted.org/packages/bc/ad/dbfeb2fe092a9bebabb3ff827c5c7e1301da2858169646814ae55e1d5017/aiohttp_socks-0.6.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	>=dev-python/aiohttp-2.3.2[${PYTHON_USEDEP}]
"

DOCS=( README.md )