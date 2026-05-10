# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Poetry PEP 517 Build Backend"
HOMEPAGE="None https://pypi.org/project/poetry-core/"
SRC_URI="https://files.pythonhosted.org/packages/b0/97/f7bb55470bb7890d9b3d3f9fa761083d5c9a6838b17c94a41bf2939f89ef/poetry_core-2.4.0.tar.gz -> poetry_core-2.4.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/lark[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/tomlkit[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="next"
S="${WORKDIR}/poetry_core-2.4.0"