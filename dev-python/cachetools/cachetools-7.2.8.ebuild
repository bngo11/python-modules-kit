# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensible memoizing collections and decorators"
HOMEPAGE="None https://pypi.org/project/cachetools/"
SRC_URI="https://files.pythonhosted.org/packages/93/6f/faa5e0606769105e70e0478031a8f9a6b729e329f42ce2462585c6d9aa52/cachetools-7.2.8.tar.gz -> cachetools-7.2.8.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cachetools-7.2.8"