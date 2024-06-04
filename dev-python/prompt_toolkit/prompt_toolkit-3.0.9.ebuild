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
SRC_URI="https://files.pythonhosted.org/packages/fc/92/43d0c652f1537bff7bc49370e05c8b29992f270bbbbf82357b3e185c7c5f/prompt_toolkit-3.0.9.tar.gz -> prompt_toolkit-3.0.9.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/wcwidth[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest