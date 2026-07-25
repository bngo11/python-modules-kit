# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensible memoizing collections and decorators"
HOMEPAGE="None https://pypi.org/project/cachetools/"
SRC_URI="https://files.pythonhosted.org/packages/55/af/861ebc2e318a5c3300e3eb63bc4d30f3d70a46d13b360093728ac0705eed/cachetools-7.1.6.tar.gz -> cachetools-7.1.6.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cachetools-7.1.6"