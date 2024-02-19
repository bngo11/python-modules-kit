# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Utils for converting between date formats and calculating holidays"
HOMEPAGE="https://github.com/fitnr/convertdate"
SRC_URI="https://files.pythonhosted.org/packages/04/3d/04148ceb732dfb6f10e9b89fa5915080a91e27fe28fd982c259bc4d29ced/convertdate-2.4.0.tar.gz -> convertdate-2.4.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/PyMeeus[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

distutils_enable_sphinx docs \
	dev-python/myst_parser \
	dev-python/sphinx_rtd_theme