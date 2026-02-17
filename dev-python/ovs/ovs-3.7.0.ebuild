# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Open vSwitch library"
HOMEPAGE="http://www.openvswitch.org/ https://pypi.org/project/ovs/"
SRC_URI="https://files.pythonhosted.org/packages/87/b3/3bc96a930747eff6eaafd3b9a6f8bae64f71c3057d1736097c2c02e87cce/ovs-3.7.0.tar.gz -> ovs-3.7.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/sortedcontainers[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ovs-3.7.0"