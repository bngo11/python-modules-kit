# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Extract data from Python tracebacks for informative displays"
HOMEPAGE="https://github.com/alexmojaki/stack_data"
SRC_URI="https://files.pythonhosted.org/packages/28/e3/55dcc2cfbc3ca9c29519eb6884dd1415ecb53b0e934862d3559ddcb7e20b/stack_data-0.6.3.tar.gz -> stack_data-0.6.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/asttokens[${PYTHON_USEDEP}]
	dev-python/executing[${PYTHON_USEDEP}]
	dev-python/pure_eval[${PYTHON_USEDEP}]"
BDEPEND="
	test? (
		dev-python/cython[${PYTHON_USEDEP}]
		dev-python/typeguard[${PYTHON_USEDEP}]
		dev-python/littleutils[${PYTHON_USEDEP}]
		dev-python/pygments[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest