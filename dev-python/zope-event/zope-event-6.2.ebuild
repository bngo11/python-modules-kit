# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Event publishing / dispatch, used by Zope Component Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.event http://docs.zope.org/zope.event/"
SRC_URI="https://files.pythonhosted.org/packages/93/41/faa10af34d48d9cd6fa0249a1162943ad84a9590bd1a06939981e6640416/zope_event-6.2.tar.gz -> zope_event-6.2.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

distutils_enable_tests nose

S="${WORKDIR}/${MY_P}"

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}