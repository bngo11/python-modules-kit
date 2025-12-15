# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensible memoizing collections and decorators"
HOMEPAGE="None https://pypi.org/project/cachetools/"
SRC_URI="https://files.pythonhosted.org/packages/b5/44/5dc354b9f2df614673c2a542a630ef95d578b4a8673a1046d1137a7e2453/cachetools-6.2.3.tar.gz -> cachetools-6.2.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cachetools-6.2.3"