# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="C parser and AST generator written in Python"
HOMEPAGE="https://github.com/eliben/pycparser"
SRC_URI="https://files.pythonhosted.org/packages/da/a8/c5fdbeee588bb8ada9458774f43adf1bdd30bd59157055142183e769a024/pycparser-3.11.tar.gz -> pycparser-3.11.tar.gz"

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