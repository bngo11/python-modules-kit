# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="C parser and AST generator written in Python"
HOMEPAGE="https://github.com/eliben/pycparser"
SRC_URI="https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/ply:=[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] )"

python_prepare_all() {
	# remove the original files to guarantee their regen
	rm pycparser/{c_ast,lextab,yacctab}.py || die

	# kill sys.path manipulations to force the tests to use built files
	sed -i -e '/sys\.path/d' tests/*.py || die

	distutils-r1_python_prepare_all
}

python_compile() {
	distutils-r1_python_compile

	# note: tables built by py3.5+ are incompatible with older versions
	# because of 100 group limit of 're' module -- just generate them
	# separately optimized for each target instead
	pushd "${BUILD_DIR}"/lib/pycparser > /dev/null || die
	"${PYTHON}" _build_tables.py || die
	popd > /dev/null || die
}

python_test() {
	# change workdir to avoid '.' import
	nosetests -v -w tests || die
}