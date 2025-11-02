# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="pbr"
inherit distutils-r1

DESCRIPTION="Python Build Reasonableness"
HOMEPAGE="https://docs.openstack.org/pbr/latest/ https://pypi.org/project/pbr/"
SRC_URI="https://files.pythonhosted.org/packages/7f/92/fb5cde14e8141bde5f4bc1eb5ff6aa0590ce9780ce29aaff2ad569cfa85b/pbr-7.0.2.tar.gz -> pbr-7.0.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pbr-7.0.2"