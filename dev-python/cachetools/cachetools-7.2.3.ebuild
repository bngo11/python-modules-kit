# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensible memoizing collections and decorators"
HOMEPAGE="None https://pypi.org/project/cachetools/"
SRC_URI="https://files.pythonhosted.org/packages/09/88/27fe0785c7a9aa285c753db0b4ea967adbf76128fede66379c35a4b8d054/cachetools-7.2.3.tar.gz -> cachetools-7.2.3.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cachetools-7.2.3"