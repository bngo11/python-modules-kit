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
SRC_URI="https://files.pythonhosted.org/packages/a2/78/0d2db9382c92a163d7095fc08efff7800880f830a152cfced40161e7638d/emoji-2.15.0.tar.gz -> emoji-2.15.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest