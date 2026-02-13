# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="A small Python package for determining appropriate platform-specific dirs, e.g. a `user data dir`."
HOMEPAGE="None https://pypi.org/project/platformdirs/"
SRC_URI="https://files.pythonhosted.org/packages/d3/3e/c81eb24fb98b00bc097b9ce5dee6eca020c52619ed95b246aaec2018c511/platformdirs-4.7.1.tar.gz -> platformdirs-4.7.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/platformdirs-4.7.1"