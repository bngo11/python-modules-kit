# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Composable command line interface toolkit"
HOMEPAGE="None https://pypi.org/project/click/"
SRC_URI="https://files.pythonhosted.org/packages/e9/87/105111999772ec9730e3d4d910c723ea9763ece2ec441533a5cea1e87e3c/click-8.2.2.tar.gz -> click-8.2.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/click-8.2.2"