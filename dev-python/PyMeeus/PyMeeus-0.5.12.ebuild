# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Library of astronomical algorithms in Python"
HOMEPAGE="https://github.com/architest/pymeeus"
SRC_URI="https://files.pythonhosted.org/packages/81/76/599896b37e60f43078afd8354b3802eb7ca257a7e7f6253cc21c4c672877/PyMeeus-0.5.12.tar.gz -> PyMeeus-0.5.12.tar.gz"

LICENSE="GPL-3 LGPL-3"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest