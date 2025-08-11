# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1
MY_PN=zope.deferredimport
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Deferred Impport"
HOMEPAGE="https://docs.zope.org/zope.deferredimport/"
SRC_URI="https://files.pythonhosted.org/packages/da/a6/fa5574227475b4ede22b813f208876af19b29a55c76a0accad09a966869b/zope_deferredimport-5.1.tar.gz -> zope_deferredimport-5.1.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
	dev-python/zope-proxy[${PYTHON_USEDEP}]
"
DEPEND="test? ( ${RDEPEND}
	dev-python/nose[${PYTHON_USEDEP}]
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