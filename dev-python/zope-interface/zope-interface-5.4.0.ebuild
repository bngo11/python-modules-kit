# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1 flag-o-matic

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Interfaces for Python"
HOMEPAGE="https://pypi.org/project/zope.interface/ https://github.com/zopefoundation/zope.interface"
SRC_URI="https://files.pythonhosted.org/packages/ae/58/e0877f58daa69126a5fb325d6df92b20b77431cd281e189c5ec42b722f58/zope.interface-5.4.0.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
BDEPEND="
	test? (
		dev-python/zope-event[${PYTHON_USEDEP}]
		dev-python/zope-testing[${PYTHON_USEDEP}]
	)
"

src_prepare() {
	default
	sed -i -e '/coverage/d' ${S}/setup.py || die
}

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_compile() {
	if ! python_is_python3; then
		local CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
		append-flags -fno-strict-aliasing
	fi

	distutils-r1_python_compile
}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}