# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python extension wrapping the ICU C++ API"
HOMEPAGE="https://gitlab.pyicu.org/main/pyicu https://pypi.org/project/pyicu/"
SRC_URI="https://files.pythonhosted.org/packages/88/b0/c8b61bac55424e2ff80e20d7251c3f002baff3c07c34cee3849e3505d8f5/pyicu-2.15.3.tar.gz -> pyicu-2.15.3.tar.gz"

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
S="${WORKDIR}/PyICU-2.15.3"

DOCS=( CHANGES CREDITS README.md )
