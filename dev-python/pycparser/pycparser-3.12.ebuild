# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="C parser and AST generator written in Python"
HOMEPAGE="https://github.com/eliben/pycparser"
SRC_URI="https://files.pythonhosted.org/packages/cb/27/eeb9f307bf07060f3d9f9aa0fb8c15b01bdfded0a941e4b2719c7f94cacd/pycparser-3.12.tar.gz -> pycparser-3.12.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/ply:=[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] )"

python_prepare_all() {
	# kill sys.path manipulations to force the tests to use built files
	sed -i -e '/sys\.path/d' tests/*.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	# change workdir to avoid '.' import
	nosetests -v -w tests || die
}