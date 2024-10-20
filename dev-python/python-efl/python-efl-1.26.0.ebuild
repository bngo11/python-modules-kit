# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS=no

inherit distutils-r1 flag-o-matic

DESCRIPTION="Python bindings for Enlightenment Foundation Libraries"
HOMEPAGE="https://phab.enlightenment.org/w/projects/python_bindings_for_efl/"
SRC_URI="https://download.enlightenment.org/rel/bindings/python/python-efl-1.26.0.tar.xz"

LICENSE="|| ( GPL-3 LGPL-3 )"
SLOT="0"
KEYWORDS="*"
IUSE="doc"

RDEPEND="dev-libs/efl
	dev-python/dbus-python[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/cython[${PYTHON_USEDEP}]"
BDEPEND="virtual/pkgconfig
	doc? (
		dev-python/sphinx[${PYTHON_USEDEP}]
		media-gfx/graphviz
	)"


src_prepare() {
	default

	# Disable any optimization on x86, Gentoo bug #704260
	if use x86; then
		filter-flags -O?
		append-cflags -O0
	fi
	
	# Fix line to be true for any variations of clang in CC such as 'x86_64-pc-linux-gnu-clang'
	sed -i -e 's/if os\.getenv("CC") == "clang":/if "clang" in os\.getenv("CC"):/' setup.py
}

python_compile_all() {
	if use doc ; then
		esetup.py build_doc --build-dir "${S}"/build/doc/
	fi

	distutils-r1_python_compile
}

python_install_all() {
	use doc && local HTML_DOCS=( ./build/doc/html/. )
	distutils-r1_python_install_all
}