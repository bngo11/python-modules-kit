# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Collection of extensions to Distutils"
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/
"
SRC_URI="https://files.pythonhosted.org/packages/a7/17/133e1cd1e24373e1898ca3c7330f5c385b46c7091f0451e678f37245591b/setuptools-75.0.0.tar.gz -> setuptools-75.0.0.tar.gz"

DEPEND="
	app-arch/unzip"
PDEPEND=">=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools-75.0.0"

SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
	# Remove any wrapper
	if [ "$PN"  == 'setuptools-compat' ]; then
		rm -rf ${D}/usr/bin
	fi

}
