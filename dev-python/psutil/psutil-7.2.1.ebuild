# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Retrieve information on running processes and system utilization"
HOMEPAGE="https://github.com/giampaolo/psutil https://pypi.org/project/psutil/"
SRC_URI="https://files.pythonhosted.org/packages/73/cb/09e5184fb5fc0358d110fc3ca7f6b1d033800734d34cac10f4136cfac10e/psutil-7.2.1.tar.gz -> psutil-7.2.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/psutil-7.2.1"

python_compile() {
	# Force -j1 to avoid .o linking race conditions
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
