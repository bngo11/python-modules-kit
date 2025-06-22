# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Optional static typing for Python"
HOMEPAGE="None https://pypi.org/project/mypy/"
SRC_URI="https://files.pythonhosted.org/packages/81/69/92c7fa98112e4d9eb075a239caa4ef4649ad7d441545ccffbd5e34607cbb/mypy-1.16.1.tar.gz -> mypy-1.16.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/psutil[${PYTHON_USEDEP}]
	>=dev-python/mypy_extensions-0.4.3[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/typed-ast-1.4.0[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mypy-1.16.1"