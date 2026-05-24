# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A pyunit extension for dependency injection"
HOMEPAGE="https://launchpad.net/testscenarios"
SRC_URI="https://files.pythonhosted.org/packages/5b/f5/47750833ccb3bfd72f6082a644e0ea41fc0c54a6f5a0e98f73265af096eb/testscenarios-0.6.2.tar.gz -> testscenarios-0.6.2.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
	dev-python/testtools[${PYTHON_USEDEP}]"

# using pytest for tests since unittest loader fails with py3.5+
DEPEND="
	${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pbr-0.11[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"

python_prepare_all() {
	# Remove a faulty file from tests, missing a required attribute
	rm ${PN}/tests/test_testcase.py || die
	distutils-r1_python_prepare_all
}

python_test() {
	pytest -vv || die "Tests fail with ${EPYTHON}"
}