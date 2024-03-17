# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Jupyter Python Comm implementation, for usage in ipykernel, xeus-python"
HOMEPAGE="
	https://github.com/ipython/comm/
	https://pypi.org/project/comm/
"
SRC_URI="https://files.pythonhosted.org/packages/e9/a8/fb783cb0abe2b5fded9f55e5703015cdf1c9c85b3669087c538dd15a6a86/comm-0.2.2.tar.gz -> comm-0.2.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/traitlets-4[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest