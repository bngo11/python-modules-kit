# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A Discord RPC library in Python"
HOMEPAGE="https://qwertyquerty.github.io/pypresence/html/index.html"
SRC_URI="https://files.pythonhosted.org/packages/bb/fc/f3ff26c07204d31c124b1ed890396e60182f781bc417e51118962d3fe405/pypresence-4.6.0.tar.gz -> pypresence-4.6.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pypresence-4.6.0"