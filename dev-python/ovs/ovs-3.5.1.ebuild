# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Open vSwitch library"
HOMEPAGE="http://www.openvswitch.org/ https://pypi.org/project/ovs/"
SRC_URI="https://files.pythonhosted.org/packages/58/bc/afe6d1383931b5af1830009153a3143cdd3065305f4e8001b4b8d8135638/ovs-3.5.1.tar.gz -> ovs-3.5.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/sortedcontainers[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ovs-3.5.1"