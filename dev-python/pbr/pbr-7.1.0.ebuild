# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="pbr"
inherit distutils-r1

DESCRIPTION="Python Build Reasonableness"
HOMEPAGE="https://docs.openstack.org/pbr/latest/ https://pypi.org/project/pbr/"
SRC_URI="https://files.pythonhosted.org/packages/c1/2f/4177edd436492323881cc2a8c38a03ae598e379ac6ce6420cf1fc4f32260/pbr-7.1.0.tar.gz -> pbr-7.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pbr-7.1.0"