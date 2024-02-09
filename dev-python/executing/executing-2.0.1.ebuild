# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Get information about what a Python frame is currently doing"
HOMEPAGE="
	https://github.com/alexmojaki/executing/
	https://pypi.org/project/executing/
"
SRC_URI="https://files.pythonhosted.org/packages/08/41/85d2d28466fca93737592b7f3cc456d1cfd6bcd401beceeba17e8e792b50/executing-2.0.1.tar.gz -> executing-2.0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

# asttokens is optional runtime dep
BDEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	test? (
		dev-python/asttokens[${PYTHON_USEDEP}]
		dev-python/littleutils[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}

python_test() {
	# this test explodes when collected by pytest
	"${EPYTHON}" tests/test_main.py || die "Tests failed with ${EPYTHON}"
	epytest tests/test_pytest.py
}