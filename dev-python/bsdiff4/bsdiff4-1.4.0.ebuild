# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="binary diff and patch using the BSDIFF4-format"
HOMEPAGE="https://github.com/ilanschnell/bsdiff4"
SRC_URI="https://files.pythonhosted.org/packages/27/16/cf8b01ef02613cf579f043314d35b2b3b7080ccbdc5f1ce8f4ad65a94107/bsdiff4-1.4.0.tar.gz -> bsdiff4-1.4.0.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
