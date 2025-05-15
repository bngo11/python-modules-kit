# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple DNS resolver for asyncio"
HOMEPAGE="https://github.com/saghul/aiodns https://pypi.org/project/aiodns/"
SRC_URI="https://files.pythonhosted.org/packages/92/9b/e96226eed7568ddfd075b03695e3e1298d9de48724128a3a2957f5ee6ec8/aiodns-3.4.0.tar.gz -> aiodns-3.4.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/pycares-3[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/aiodns-3.4.0"