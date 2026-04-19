# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Core utilities for Python packages"
HOMEPAGE="None https://pypi.org/project/packaging/"
SRC_URI="https://files.pythonhosted.org/packages/df/de/0d2b39fb4af88a0258f3bac87dfcbb48e73fbdea4a2ed0e2213f9a4c2f9a/packaging-26.1.tar.gz -> packaging-26.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/packaging-26.1"