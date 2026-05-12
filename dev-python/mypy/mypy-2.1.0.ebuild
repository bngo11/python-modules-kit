# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Optional static typing for Python"
HOMEPAGE="None https://pypi.org/project/mypy/"
SRC_URI="https://files.pythonhosted.org/packages/82/15/cca9d88503549ed6fedeaa1d448cdddd542ee8a490232d732e278036fbf2/mypy-2.1.0.tar.gz -> mypy-2.1.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	>=dev-python/mypy_extensions-0.4.3[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/typed-ast-1.4.0[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/mypy-2.1.0"