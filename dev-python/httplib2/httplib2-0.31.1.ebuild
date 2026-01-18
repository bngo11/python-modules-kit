# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A comprehensive HTTP client library."
HOMEPAGE="https://github.com/httplib2/httplib2 https://pypi.org/project/httplib2/"
SRC_URI="https://files.pythonhosted.org/packages/77/df/6eb1d485a513776bbdbb1c919b72e59b5acc51c5e7ef28ad1cd444e252a3/httplib2-0.31.1.tar.gz -> httplib2-0.31.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/pyparsing[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/httplib2-0.31.1"