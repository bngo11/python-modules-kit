# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Discover and load entry points from installed packages."
HOMEPAGE="https://github.com/takluyver/entrypoints https://pypi.org/project/entrypoints/"
SRC_URI="https://files.pythonhosted.org/packages/ea/8d/a7121ffe5f402dc015277d2d31eb82d2187334503a011c18f2e78ecbb9b2/entrypoints-0.4.tar.gz -> entrypoints-0.4.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/entrypoints-0.4"