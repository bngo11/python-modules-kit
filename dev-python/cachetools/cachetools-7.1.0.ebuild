# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensible memoizing collections and decorators"
HOMEPAGE="None https://pypi.org/project/cachetools/"
SRC_URI="https://files.pythonhosted.org/packages/d0/1d/7cbe8f84352789be3dcbb1239f425984f353efa253deeeff38af600870b3/cachetools-7.1.0.tar.gz -> cachetools-7.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cachetools-7.1.0"