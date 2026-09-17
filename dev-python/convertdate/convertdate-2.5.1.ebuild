# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Utils for converting between date formats and calculating holidays"
HOMEPAGE="https://github.com/fitnr/convertdate"
SRC_URI="https://files.pythonhosted.org/packages/fa/ae/9169c1aec7b66002b95a793c996710fd4e78abad24d1ce941b29e2c88a92/convertdate-2.5.1.tar.gz -> convertdate-2.5.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/PyMeeus[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

distutils_enable_sphinx docs \
	dev-python/myst_parser \
	dev-python/sphinx_rtd_theme