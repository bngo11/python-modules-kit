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
SRC_URI="https://files.pythonhosted.org/packages/7d/ea/39b988c938f75cb75d7045b5c69f8bfed47ee2152c8837fb403de29d6fb8/prompt_toolkit-3.0.53.tar.gz -> prompt_toolkit-3.0.53.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/wcwidth[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest