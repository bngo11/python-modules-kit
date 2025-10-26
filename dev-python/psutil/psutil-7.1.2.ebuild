# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Retrieve information on running processes and system utilization"
HOMEPAGE="https://github.com/giampaolo/psutil https://pypi.org/project/psutil/"
SRC_URI="https://files.pythonhosted.org/packages/cd/ec/7b8e6b9b1d22708138630ef34c53ab2b61032c04f16adfdbb96791c8c70c/psutil-7.1.2.tar.gz -> psutil-7.1.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/psutil-7.1.2"

python_compile() {
	# Force -j1 to avoid .o linking race conditions
	local MAKEOPTS=-j1
	distutils-r1_python_compile
}
