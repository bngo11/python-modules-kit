# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope testrunner script"
HOMEPAGE="https://pypi.org/project/zope.testrunner/ https://github.com/zopefoundation/zope.testrunner"
SRC_URI="https://files.pythonhosted.org/packages/2a/ef/d154bd8f56dcfb1049fc849787f438ac162d0fd4be0a855dd4ac07b69ad5/zope_testrunner-8.4.tar.gz -> zope_testrunner-8.4.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/zope-exceptions[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/zope-testing[${PYTHON_USEDEP}] )"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}