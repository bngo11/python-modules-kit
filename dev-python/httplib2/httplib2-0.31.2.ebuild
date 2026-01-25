# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A comprehensive HTTP client library."
HOMEPAGE="https://github.com/httplib2/httplib2 https://pypi.org/project/httplib2/"
SRC_URI="https://files.pythonhosted.org/packages/c1/1f/e86365613582c027dda5ddb64e1010e57a3d53e99ab8a72093fa13d565ec/httplib2-0.31.2.tar.gz -> httplib2-0.31.2.tar.gz"

DEPEND=""
RDEPEND="dev-python/pyparsing[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/httplib2-0.31.2"