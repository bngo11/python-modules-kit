# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Protocol Buffers using Python type annotations"
HOMEPAGE="https://github.com/eigenein/protobuf https://pypi.org/project/pure-protobuf/"
SRC_URI="https://files.pythonhosted.org/packages/11/49/2bbc64c052c63a63ba5c9af561734e8e5c6e440b1ce325617fca4b5ecea6/pure_protobuf-3.1.5.tar.gz -> pure_protobuf-3.1.5.tar.gz"

DEPEND="
	>=dev-python/poetry_dynamic_versioning-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/tomlkit-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/poetry-core-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.4.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pure_protobuf-3.1.5"

distutils_enable_tests pytest
