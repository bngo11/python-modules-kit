# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Simplified packaging of Python modules (core module)"
HOMEPAGE="None https://pypi.org/project/flit-core/"
SRC_URI="https://files.pythonhosted.org/packages/d3/8b/0370578a456986d6995344967a479dd5c9d4e064681550c2a9594bb58b4a/flit_core-4.2.0.tar.gz -> flit_core-4.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/flit_core-4.2.0"