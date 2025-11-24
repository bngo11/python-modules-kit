# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="PEP 621 metadata parsing"
HOMEPAGE="None https://pypi.org/project/pyproject-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/75/bd/74706b3671c443944f487a42a0148a507b733c60600df1d34cde41e6d10b/pyproject_metadata-0.10.0.tar.gz -> pyproject_metadata-0.10.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyproject_metadata-0.10.0"