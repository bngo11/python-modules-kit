# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python interface for c-ares"
HOMEPAGE="https://github.com/saghul/pycares/"
SRC_URI="https://files.pythonhosted.org/packages/e1/16/66c5e0498934011d36887d69ce116e347253399d06931a6ca900c7cc0899/pycares-5.2.0.tar.gz -> pycares-5.2.0.tar.gz"

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