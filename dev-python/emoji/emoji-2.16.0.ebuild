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
SRC_URI="https://files.pythonhosted.org/packages/34/01/a25a9c13e2f8945d06b219e08e88a5dd8a504ad1a79f872f25d6814f498c/emoji-2.16.0.tar.gz -> emoji-2.16.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest