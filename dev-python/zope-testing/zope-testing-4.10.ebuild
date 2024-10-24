# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope testing helpers"
HOMEPAGE="https://pypi.org/project/zope.testing/ https://github.com/zopefoundation/zope.testing"
SRC_URI="https://files.pythonhosted.org/packages/af/b8/f18718a7fceb109664b70c908e2aa5743eb6a057138251ceaf7d5ab0bd9b/zope.testing-4.10.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}