# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Vestigial utilities from IPython"
HOMEPAGE="
	https://github.com/ipython/ipython_genutils/
	https://pypi.org/project/ipython_genutils/
"
SRC_URI="https://files.pythonhosted.org/packages/e8/69/fbeffffc05236398ebfcfb512b6d2511c622871dca1746361006da310399/ipython_genutils-0.2.0.tar.gz -> ipython_genutils-0.2.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

# Needed because package provides decorators which use pytest (after patch)
RDEPEND="
	dev-python/pytest[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}/${P}-remove-nose.patch"
)

distutils_enable_tests pytest