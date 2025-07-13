# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Expand system variables Unix style"
HOMEPAGE="None https://pypi.org/project/expandvars/"
SRC_URI="https://files.pythonhosted.org/packages/dc/c9/c0a46f462058446aafe953bf76a957c17f78550216a95fbded2270f83117/expandvars-1.1.1.tar.gz -> expandvars-1.1.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/expandvars-1.1.1"

distutils_enable_tests pytest
