# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extension to the parse module"
HOMEPAGE="https://pypi.org/project/parse-type/"
SRC_URI="https://github.com/jenisys/parse_type/tarball/f779474296d0534174e0224af1f5e048b8cb0dfe -> parse_type-0.6.0-f779474.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/parse-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.11[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/jenisys-parse_type* "$S" || die
	fi
}

src_prepare() {
	default
	# hack to disable 2to3 which we don't need anyway and setuptools 58+ dies on
	sed -i -e 's/use_2to3/foo_2to3/g' setup.py || die
}
