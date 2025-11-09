# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="itertools and builtins for AsyncIO and mixed iterables"
HOMEPAGE="None https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/fd/3c/53c4a17a05fb9ea2313ee1777ff53f5e001aefd5cc85aa2f4c2d982e1e38/aioitertools-0.13.0.tar.gz -> aioitertools-0.13.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/aioitertools-0.13.0"