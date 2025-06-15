# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python interface for c-ares"
HOMEPAGE="https://github.com/saghul/pycares/"
SRC_URI="https://files.pythonhosted.org/packages/f5/37/4d4f8ac929e98aad64781f37d9429e82ba65372fc89da0473cdbecdbbb03/pycares-4.9.0.tar.gz -> pycares-4.9.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
# Tests fail with network-sandbox, since they try to resolve google.com
RESTRICT="test"

# uses bundled/patched c-ares
RDEPEND="virtual/python-cffi[${PYTHON_USEDEP}]"
BDEPEND=${RDEPEND}

python_test() {
	"${EPYTHON}" tests/tests.py -v || die
}