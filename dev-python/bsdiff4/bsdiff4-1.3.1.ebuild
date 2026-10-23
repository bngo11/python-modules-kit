# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="binary diff and patch using the BSDIFF4-format"
HOMEPAGE="https://github.com/ilanschnell/bsdiff4"
SRC_URI="https://files.pythonhosted.org/packages/2b/3c/62c66de04e2ff09a3a3d56e4fc8a616177d481ae6c509363d178d2509690/bsdiff4-1.3.1.tar.gz -> bsdiff4-1.3.1.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
