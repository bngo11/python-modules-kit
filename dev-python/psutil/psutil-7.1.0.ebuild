# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Retrieve information on running processes and system utilization"
HOMEPAGE="https://github.com/giampaolo/psutil https://pypi.org/project/psutil/"
SRC_URI="https://files.pythonhosted.org/packages/b3/31/4723d756b59344b643542936e37a31d1d3204bcdc42a7daa8ee9eb06fb50/psutil-7.1.0.tar.gz -> psutil-7.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/psutil-7.1.0"

python_compile() {
	# Force -j1 to avoid .o linking race conditions
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
