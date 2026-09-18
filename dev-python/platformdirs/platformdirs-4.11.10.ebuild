# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs, e.g. a `user data dir`."
HOMEPAGE="None https://pypi.org/project/platformdirs/"
SRC_URI="https://files.pythonhosted.org/packages/89/24/92d90bebedf197eb15b144367ce6fd4ad2de571927cd09dde190a36db8fc/platformdirs-4.11.10.tar.gz -> platformdirs-4.11.10.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.11.10"