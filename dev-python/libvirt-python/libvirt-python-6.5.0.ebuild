# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

MY_P="${P/_rc/-rc}"

inherit distutils-r1

SRC_URI="https://libvirt.org/sources/python/${MY_P}.tar.gz"
KEYWORDS="*"
RDEPEND="app-emulation/libvirt:0/${PV}"
S="${WORKDIR}/${P%_rc*}"

DESCRIPTION="libvirt Python bindings"
HOMEPAGE="https://www.libvirt.org"
LICENSE="LGPL-2"
SLOT="0"
IUSE="examples test"
RESTRICT="!test? ( test )"

DEPEND="${RDEPEND}
	virtual/pkgconfig
	test? ( dev-python/lxml[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}] )"

python_test() {
	esetup.py test
}

python_install_all() {
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
	distutils-r1_python_install_all
}
