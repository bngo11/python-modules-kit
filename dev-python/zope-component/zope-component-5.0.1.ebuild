# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.component
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Component Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.component
	https://docs.zope.org/zope.component/"
SRC_URI="https://files.pythonhosted.org/packages/c5/c0/64931e1e8f2bfde9d8bc01670de2d2a395efcf8f49d3a9daa21cf3ffee2b/zope.component-5.0.1.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
dev-python/zope-event[${PYTHON_USEDEP}]
	dev-python/zope-event[${PYTHON_USEDEP}]
	dev-python/zope-location[${PYTHON_USEDEP}]
	dev-python/zope-proxy[${PYTHON_USEDEP}]
	dev-python/zope-deferredimport[${PYTHON_USEDEP}]
	python_targets_python3_7? ( dev-python/zope-deprecation[python_targets_python3_7] )
	python_targets_pypy3? ( dev-python/zope-deprecation[python_targets_pypy3] )
	dev-python/zope-hookable[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-4.1.0[${PYTHON_USEDEP}]"
DEPEND="test? ( ${RDEPEND}
	dev-python/nose[${PYTHON_USEDEP}] 
	dev-python/zope-configuration[${PYTHON_USEDEP}]
	dev-python/zope-i18nmessageid[${PYTHON_USEDEP}]
	dev-python/zope-testing[${PYTHON_USEDEP}]
	dev-python/zope-testrunner[${PYTHON_USEDEP}]
	)
	dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

RESTRICT="test"

python_test() {
	nosetests || die
}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}