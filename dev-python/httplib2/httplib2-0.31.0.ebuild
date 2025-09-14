# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A comprehensive HTTP client library."
HOMEPAGE="https://github.com/httplib2/httplib2 https://pypi.org/project/httplib2/"
SRC_URI="https://files.pythonhosted.org/packages/52/77/6653db69c1f7ecfe5e3f9726fdadc981794656fcd7d98c4209fecfea9993/httplib2-0.31.0.tar.gz -> httplib2-0.31.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/pyparsing[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/httplib2-0.31.0"