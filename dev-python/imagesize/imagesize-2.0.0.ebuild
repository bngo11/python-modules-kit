# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Pure Python module for getting image size from png/jpeg/jpeg2000/gif files"
HOMEPAGE="https://github.com/shibukawa/imagesize_py"
SRC_URI="https://files.pythonhosted.org/packages/6c/e6/7bf14eeb8f8b7251141944835abd42eb20a658d89084b7e1f3e5fe394090/imagesize-2.0.0.tar.gz -> imagesize-2.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
"
RDEPEND=""

python_test() {
	py.test || die "tests failed with ${EPYTHON}"
}