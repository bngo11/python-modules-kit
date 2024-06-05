# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Emoji for Python"
HOMEPAGE="
	https://github.com/carpedm20/emoji/
	https://pypi.org/project/emoji/
"
SRC_URI="https://files.pythonhosted.org/packages/1b/13/ae307086e7d761fb7fdb2e3439bdd4628b10b7b372639e33fac4e52cfbc2/emoji-2.12.1.tar.gz -> emoji-2.12.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest