# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A Discord RPC library in Python"
HOMEPAGE="https://qwertyquerty.github.io/pypresence/html/index.html"
SRC_URI="https://files.pythonhosted.org/packages/f6/6b/dedacb949ee73c3fd4a11992a4e9a70fc4cd1046ed6870f9138348293ded/pypresence-4.6.1.tar.gz -> pypresence-4.6.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pypresence-4.6.1"