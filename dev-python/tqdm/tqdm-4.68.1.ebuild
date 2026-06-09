# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Fast, Extensible Progress Meter"
HOMEPAGE="None https://pypi.org/project/tqdm/"
SRC_URI="https://files.pythonhosted.org/packages/06/b3/36c8ecf72e8925200671613332db156d84b99b3aee742a41c1938ebb0808/tqdm-4.68.1.tar.gz -> tqdm-4.68.1.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/tqdm-4.68.1"