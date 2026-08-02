# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A configuration system for Python applications"
HOMEPAGE="
	https://github.com/ipython/traitlets/
	https://pypi.org/project/traitlets/
"
SRC_URI="https://files.pythonhosted.org/packages/61/a1/d7e7d9f461575d8bb77e3c3bd78a6cdfdd2bb4a06bfbbb8a0e1f51ab7bc2/traitlets-5.16.0.tar.gz -> traitlets-5.16.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="
	test? (
		>=dev-python/argcomplete-2.0[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
	)
"

distutils_enable_sphinx docs/source \
	dev-python/myst-parser \
	dev-python/pydata-sphinx-theme
distutils_enable_tests pytest

python_test() {
	local EPYTEST_IGNORE=(
		tests/test_typing.py
	)

	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -p pytest_mock
}