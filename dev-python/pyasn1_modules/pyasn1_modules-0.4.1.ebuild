# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="ASN.1 modules"
HOMEPAGE="https://github.com/pyasn1/pyasn1-modules https://pypi.org/project/pyasn1-modules/"
SRC_URI="https://files.pythonhosted.org/packages/1d/67/6afbf0d507f73c32d21084a79946bfcfca5fbc62a72057e9c23797a737c9/pyasn1_modules-0.4.1.tar.gz -> pyasn1_modules-0.4.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.4.1[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pyasn1_modules-0.4.1"

python_test() {
	esetup.py test
}

python_install_all() {
		distutils-r1_python_install_all
		insinto /usr/share/${P}
		doins -r tools
}
