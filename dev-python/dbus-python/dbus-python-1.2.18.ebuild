# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="threads(+)"

inherit autotools python-r1

DESCRIPTION="Python bindings for the D-Bus messagebus"
HOMEPAGE="https://www.freedesktop.org/wiki/Software/DBusBindings https://dbus.freedesktop.org/doc/dbus-python/"
SRC_URI="https://files.pythonhosted.org/packages/b1/5c/ccfc167485806c1936f7d3ba97db6c448d0089c5746ba105b6eb22dba60e/dbus-python-1.2.18.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc examples test"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
RESTRICT="!test? ( test )"

RDEPEND="
	>=sys-apps/dbus-1.8:=
	>=dev-libs/glib-2.40
	${PYTHON_DEPS}"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	doc? ( $(python_gen_any_dep 'dev-python/sphinx[${PYTHON_USEDEP}]') )
	test? ( dev-python/pygobject:3[${PYTHON_USEDEP}]
		dev-python/tappy[${PYTHON_USEDEP}] )"

python_check_deps() {
	has_version "dev-python/sphinx[${PYTHON_USEDEP}]"
}

src_prepare() {
	default
	# Update py-compile, bug 529502.
	eautoreconf
	python_copy_sources
}

src_configure() {
	use doc && python_setup
	local SPHINX_IMPL=${EPYTHON}

	configuring() {
		local myconf=(
			--disable-documentation
		)
		[[ ${EPYTHON} == ${SPHINX_IMPL} ]] &&
			myconf+=( --enable-documentation )

		econf "${myconf[@]}"
	}
	python_foreach_impl run_in_build_dir configuring
}

src_compile() {
	python_foreach_impl run_in_build_dir default
}

src_test() {
	unset DBUS_SESSION_BUS_ADDRESS
	python_foreach_impl run_in_build_dir default
}

src_install() {
	python_foreach_impl run_in_build_dir default
	find "${D}" -name "*.la" -delete || die

	use examples && dodoc -r examples
}