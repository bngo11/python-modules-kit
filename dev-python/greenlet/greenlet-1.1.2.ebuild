# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
# Note: greenlet is built-in in pypy
PYTHON_COMPAT=( python3_8+ )

inherit distutils-r1

DESCRIPTION="Lightweight in-process concurrent programming"
HOMEPAGE="
	https://greenlet.readthedocs.io/en/latest/
	https://github.com/python-greenlet/greenlet/
	https://pypi.org/project/greenlet/
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

distutils_enable_sphinx docs
distutils_enable_tests unittest

python_test() {
	eunittest greenlet.tests
}
