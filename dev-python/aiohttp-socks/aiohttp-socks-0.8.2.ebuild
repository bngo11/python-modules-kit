# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="SOCKS proxy connector for aiohttp"
HOMEPAGE="https://pypi.org/project/aiohttp-socks/"
SRC_URI="https://files.pythonhosted.org/packages/67/71/7c9964c7fe50ce4f019db4b5c3abcffd7580f700e95bbd36f5ea2152c59b/aiohttp_socks-0.8.2.tar.gz -> aiohttp_socks-0.8.2.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	>=dev-python/aiohttp-2.3.2[${PYTHON_USEDEP}]
"

DOCS=( README.md )