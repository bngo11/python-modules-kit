# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs, e.g. a `user data dir`."
HOMEPAGE="None https://pypi.org/project/platformdirs/"
SRC_URI="https://files.pythonhosted.org/packages/53/18/f3bb8ef0d3b930692343da8aa4d3cbcd6749477c053959395ac81965a6e9/platformdirs-4.11.8.tar.gz -> platformdirs-4.11.8.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.11.8"