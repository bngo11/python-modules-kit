# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Additional functions used by other projects by developer jaraco"
HOMEPAGE="
	https://github.com/jaraco/jaraco.functools/
	https://pypi.org/project/jaraco.functools/
"
SRC_URI="https://files.pythonhosted.org/packages/57/7c/fe770e264913f9a49ddb9387cca2757b8d7d26f06735c1bfbb018912afce/jaraco.functools-4.0.0.tar.gz -> jaraco.functools-4.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/${P/-/.}"

RDEPEND="
	>=dev-python/more-itertools-0.12.0-r1[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		dev-python/jaraco-classes[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest