# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Open vSwitch library"
HOMEPAGE="http://www.openvswitch.org/ https://pypi.org/project/ovs/"
SRC_URI="https://files.pythonhosted.org/packages/c3/dc/46b8b62cc9e70ab7a369916d8db089382254a81c2a69dea59652b87f1fe8/ovs-3.6.1.tar.gz -> ovs-3.6.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/sortedcontainers[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ovs-3.6.1"