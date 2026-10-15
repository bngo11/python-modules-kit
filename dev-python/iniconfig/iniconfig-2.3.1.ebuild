# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="brain-dead simple config-ini parsing"
HOMEPAGE="None https://pypi.org/project/iniconfig/"
SRC_URI="https://files.pythonhosted.org/packages/01/e1/2069291243c926a2ff1cd706c7f3eeb9b62144bf60f77c9fb9ff2fb26bd3/iniconfig-2.3.1.tar.gz -> iniconfig-2.3.1.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="python_targets_python2_7? ( dev-python/iniconfig-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/iniconfig-2.3.1"

src_prepare() {
	distutils-r1_src_prepare
}
