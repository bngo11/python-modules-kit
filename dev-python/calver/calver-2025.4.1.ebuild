# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Setuptools extension for CalVer package versions"
HOMEPAGE="None https://pypi.org/project/calver/"
SRC_URI="https://files.pythonhosted.org/packages/51/a5/2371326892fcea6f185c0febea51139ce4f8a68a3c5d105e54cefe99637e/calver-2025.4.1.tar.gz -> calver-2025.4.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/calver-2025.4.1"