# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Setuptools extension for CalVer package versions"
HOMEPAGE="https://github.com/di/calver https://pypi.org/project/calver/"
SRC_URI="https://files.pythonhosted.org/packages/58/d7/ebd18f710cedddc010cc71d89ceb00425fc373ec44311aa66ed57790432d/calver-2025.3.31.tar.gz -> calver-2025.3.31.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/calver-2025.3.31"