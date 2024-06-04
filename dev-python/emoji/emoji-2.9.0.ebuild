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
SRC_URI="https://files.pythonhosted.org/packages/3e/29/8a183335d6a4bad794aaf6d0ea9116a751c6df471a6b8e8f1e9bb9f00aae/emoji-2.9.0.tar.gz -> emoji-2.9.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest