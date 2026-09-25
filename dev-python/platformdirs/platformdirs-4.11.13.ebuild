# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs, e.g. a `user data dir`."
HOMEPAGE="None https://pypi.org/project/platformdirs/"
SRC_URI="https://files.pythonhosted.org/packages/53/0e/7be2983c52622d6c0899300f760e31ba143355cedf1afcb3e65689d5ca85/platformdirs-4.11.13.tar.gz -> platformdirs-4.11.13.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.11.13"