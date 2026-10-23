# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python interface for c-ares"
HOMEPAGE="https://github.com/saghul/pycares/"
SRC_URI="https://files.pythonhosted.org/packages/c9/f3/4df974f2f902fdcec81087773f37eaedc7c8308291fb3f15da7ff21a5b88/pycares-5.2.1.tar.gz -> pycares-5.2.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""
# Tests fail with network-sandbox, since they try to resolve google.com
RESTRICT="test"

# uses bundled/patched c-ares
RDEPEND="virtual/python-cffi[${PYTHON_USEDEP}]"
BDEPEND=${RDEPEND}

src_prepare() {
	default
	sed -i '/ADD_SUBDIRECTORY (docs)/d' deps/c-ares/CMakeLists.txt || die
}

python_test() {
	"${EPYTHON}" tests/tests.py -v || die
}