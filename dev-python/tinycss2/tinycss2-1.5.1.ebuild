# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="A tiny CSS parser"
HOMEPAGE="None https://pypi.org/project/tinycss2/"
SRC_URI="https://files.pythonhosted.org/packages/a3/ae/2ca4913e5c0f09781d75482874c3a95db9105462a92ddd303c7d285d3df2/tinycss2-1.5.1.tar.gz -> tinycss2-1.5.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/webencodings[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/tinycss2-1.5.1"