# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="binary diff and patch using the BSDIFF4-format"
HOMEPAGE="https://github.com/ilanschnell/bsdiff4"
SRC_URI="https://files.pythonhosted.org/packages/53/b9/4559ede9a4c8c4451688303544da84654643fdc7f28790aca85be80b4b7c/bsdiff4-1.2.6.tar.gz -> bsdiff4-1.2.6.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
