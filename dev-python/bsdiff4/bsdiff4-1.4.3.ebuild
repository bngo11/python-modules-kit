# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="binary diff and patch using the BSDIFF4-format"
HOMEPAGE="https://github.com/ilanschnell/bsdiff4"
SRC_URI="https://files.pythonhosted.org/packages/8f/a1/fe1f258eed36b2e7d0b087412b1776db361890b386c3ae1b130fb84f1b2e/bsdiff4-1.4.3.tar.gz -> bsdiff4-1.4.3.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
