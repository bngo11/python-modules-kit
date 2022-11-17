# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope i18nmessageid Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.i18nmessageid http://docs.zope.org/zope.i18nmessageid/"
SRC_URI="https://files.pythonhosted.org/packages/4f/cf/789adba1b355eb9d315aa9d0f0c0ee5fb47b04a286862f97f13ad2bb2693/zope.i18nmessageid-5.1.1.tar.gz -> zope.i18nmessageid-5.1.1.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}