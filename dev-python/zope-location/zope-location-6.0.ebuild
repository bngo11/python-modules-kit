# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1
MY_PN=zope.location
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Hookable"
HOMEPAGE="https://docs.zope.org/zope.location/"
SRC_URI="https://files.pythonhosted.org/packages/b8/42/8b5708c03d55a4224772c7725df9975da79bc4ac5ee012dccdb53b4d5cf3/zope_location-6.0.tar.gz -> zope_location-6.0.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
dev-python/zope-component[${PYTHON_USEDEP}]
dev-python/zope-interface[${PYTHON_USEDEP}]
dev-python/zope-proxy[${PYTHON_USEDEP}]
dev-python/zope-schema[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}