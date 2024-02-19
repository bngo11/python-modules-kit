# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit edos2unix distutils-r1

DESCRIPTION="Exif manipulation with pure Python"
HOMEPAGE="
	https://github.com/hMatoba/Piexif/
	https://pypi.org/project/piexif/
"
SRC_URI="https://files.pythonhosted.org/packages/fa/84/a3f25cec7d0922bf60be8000c9739d28d24b6896717f44cc4cfb843b1487/piexif-1.1.3.zip -> piexif-1.1.3.zip"
S="${WORKDIR}/Piexif-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

BDEPEND="
	app-arch/unzip
	test? ( dev-python/pillow[jpeg,${PYTHON_USEDEP}] )
"

PATCHES=(
	# From https://github.com/hMatoba/Piexif/pull/109
	"${FILESDIR}"/${P}-tests-pillow-7.2.0.patch
)

src_prepare() {
	edos2unix tests/s_test.py  # to be able to patch it
	default
}

python_test() {
	esetup.py test
}