# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Emoji for Python"
HOMEPAGE="
	https://github.com/fengsp/color-thief-py/
	https://pypi.org/project/colorthief/
"
SRC_URI="https://files.pythonhosted.org/packages/b6/b2/b55b741f7a7d1299d23e1c635f00f6c57ea4d2e9b76d09e1fc5ea3ca9921/colorthief-0.2.1.tar.gz -> colorthief-0.2.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest