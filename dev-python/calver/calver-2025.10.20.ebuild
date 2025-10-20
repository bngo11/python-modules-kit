# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Setuptools extension for CalVer package versions"
HOMEPAGE="None https://pypi.org/project/calver/"
SRC_URI="https://files.pythonhosted.org/packages/4a/96/0c57e3e228ffc54074867406b659b197678674f1f0bf600d114965289834/calver-2025.10.20.tar.gz -> calver-2025.10.20.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/calver-2025.10.20"