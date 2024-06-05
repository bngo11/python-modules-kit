# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Building powerful interactive command lines in Python"
HOMEPAGE="
	https://pypi.org/project/prompt-toolkit/
	https://github.com/prompt-toolkit/python-prompt-toolkit/
"
SRC_URI="https://files.pythonhosted.org/packages/5d/0f/2a8cf0881833cae8a2b50f0ce63ba4662c44473640c1feeb054f19d33459/prompt_toolkit-3.0.46.tar.gz -> prompt_toolkit-3.0.46.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/wcwidth[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest