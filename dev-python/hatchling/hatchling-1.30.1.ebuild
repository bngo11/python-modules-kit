# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Modern, extensible Python build backend"
HOMEPAGE="None https://pypi.org/project/hatchling/"
SRC_URI="https://files.pythonhosted.org/packages/63/4c/8717ccb844b4fa5a5ba6352e97d743ed24e9a22cf90b7c109c17030a46a1/hatchling-1.30.1.tar.gz -> hatchling-1.30.1.tar.gz"

DEPEND="
	$(python_gen_cond_dep '<=dev-python/pluggy-1.2.0[${PYTHON_USEDEP}]' python3_7)
	dev-python/pathspec[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pluggy[${PYTHON_USEDEP}]
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/trove-classifiers[${PYTHON_USEDEP}]
	dev-python/pathspec[${PYTHON_USEDEP}]"
RDEPEND="
	${DEPEND}
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="next"
S="${WORKDIR}/hatchling-1.30.1"