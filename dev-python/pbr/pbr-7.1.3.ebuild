# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="pbr"
inherit distutils-r1

DESCRIPTION="Python Build Reasonableness"
HOMEPAGE="https://docs.openstack.org/pbr/latest/ https://pypi.org/project/pbr/"
SRC_URI="https://files.pythonhosted.org/packages/6b/8d/ce438c28c7958e33184e8ac851ea2225b47a41e5e9e708fa3bddba631135/pbr-7.1.3.tar.gz -> pbr-7.1.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pbr-7.1.3"