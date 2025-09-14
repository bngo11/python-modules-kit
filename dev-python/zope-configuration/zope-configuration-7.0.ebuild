# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1
MY_PN=zope.configuration
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Configuration Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.configuration
	https://docs.zope.org/zope.configuration/"
SRC_URI="https://files.pythonhosted.org/packages/63/59/2af2065555f8067840f00ec2e94c3a1745e3af9176d5b0f80769ea5c5069/zope_configuration-7.0.tar.gz -> zope_configuration-7.0.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="dev-python/zope-i18nmessageid[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	>=dev-python/zope-schema-4.9[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}