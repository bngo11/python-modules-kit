# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Boolean operations on paths"
HOMEPAGE="https://github.com/typemytype/booleanOperations"
SRC_URI="https://files.pythonhosted.org/packages/b4/6e/63c0dba783d3811cdfe675883cafa4dec03fdd9d77b5743c58da01890dfe/booleanoperations-0.10.0.tar.gz -> booleanoperations-0.10.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/fonttools[${PYTHON_USEDEP}]
	dev-python/pyclipper[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/booleanOperations-0.10.0"