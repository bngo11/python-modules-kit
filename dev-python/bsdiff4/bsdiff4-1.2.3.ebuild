# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="binary diff and patch using the BSDIFF4-format"
HOMEPAGE="https://github.com/ilanschnell/bsdiff4"
SRC_URI="https://files.pythonhosted.org/packages/a8/0e/a677b62d35e3a9d074eafb5b16b569d5d6870a6ead02e8c830e4d4e73db7/bsdiff4-1.2.3.tar.gz -> bsdiff4-1.2.3.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
