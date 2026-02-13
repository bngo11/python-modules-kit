# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="PEP 621 metadata parsing"
HOMEPAGE="None https://pypi.org/project/pyproject-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/83/fa/8bf4fa41adfebd95dce360afe3f5fca243a17932089d3d5486e95ca44c57/pyproject_metadata-0.11.0.tar.gz -> pyproject_metadata-0.11.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyproject_metadata-0.11.0"