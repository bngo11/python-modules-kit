# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extension to the parse module"
HOMEPAGE="https://pypi.org/project/parse-type/"
SRC_URI="https://github.com/jenisys/parse_type/tarball/5c4126ae3973b5c0a4107cd8b29f2b74993be330 -> parse_type-0.6.6-5c4126a.tar.gz
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
		mv "${WORKDIR}"/jenisys-* "$S" || die
	fi
}

src_prepare() {
	default
	# hack to disable 2to3 which we don't need anyway and setuptools 58+ dies on
	sed -i -e 's/use_2to3/foo_2to3/g' setup.py || die
}
