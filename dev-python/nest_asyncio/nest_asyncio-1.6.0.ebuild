# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Patch asyncio to allow nested event loops"
HOMEPAGE="
	https://github.com/erdewit/nest_asyncio/
	https://pypi.org/project/nest-asyncio/
"
SRC_URI="https://files.pythonhosted.org/packages/83/f8/51569ac65d696c8ecbee95938f89d4abf00f47d58d48f6fbabfe8f0baefe/nest_asyncio-1.6.0.tar.gz -> nest_asyncio-1.6.0.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest