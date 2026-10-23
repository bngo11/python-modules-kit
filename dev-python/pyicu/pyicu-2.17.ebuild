# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/pyicu/"
SRC_URI="https://files.pythonhosted.org/packages/b0/4e/e9537414644692b556b870716b47e43c54d9b8d314a2a004abca6f7492dd/pyicu-2.17.tar.gz -> pyicu-2.17.tar.gz"

DEPEND=""
RDEPEND="
	dev-libs/icu:="
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/pyicu-2.10-fix_displayoptions.patch
)
S="${WORKDIR}/PyICU-2.17"

DOCS=( CHANGES CREDITS README.md )
