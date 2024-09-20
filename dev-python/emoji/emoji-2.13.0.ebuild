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
SRC_URI="https://files.pythonhosted.org/packages/73/49/e456f5621ed86c8e77c343c9de2a3bfbcfb6dc88885d6e81feec030fd495/emoji-2.13.0.tar.gz -> emoji-2.13.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest