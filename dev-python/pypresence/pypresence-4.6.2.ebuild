# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A Discord RPC library in Python"
HOMEPAGE="https://qwertyquerty.github.io/pypresence/html/index.html"
SRC_URI="https://files.pythonhosted.org/packages/22/ce/4ce38b7f36f4eec77b3d21a5885228bbe8ea6d5ea35ff0876f7889c3bbbd/pypresence-4.6.2.tar.gz -> pypresence-4.6.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pypresence-4.6.2"