# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extract semantic information about static Python code"
HOMEPAGE="https://github.com/serge-sans-paille/beniget/ https://pypi.org/project/beniget/"
SRC_URI="https://files.pythonhosted.org/packages/ec/d3/14f987e83301a794f8fd3217942cafe3a9ec1440c8dd2882f9255fec642d/beniget-0.5.1.tar.gz -> beniget-0.5.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/gast[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/beniget-0.5.1"