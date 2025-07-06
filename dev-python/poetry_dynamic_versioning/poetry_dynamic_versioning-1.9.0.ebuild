# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Plugin for Poetry to enable dynamic versioning based on VCS tags"
HOMEPAGE="https://github.com/mtkennerly/poetry-dynamic-versioning https://pypi.org/project/poetry-dynamic-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/28/60/e23a3a0ce1dfa64c32637485d34f3046f0c7d2e0ed10f451835ff4b37c93/poetry_dynamic_versioning-1.9.0.tar.gz -> poetry_dynamic_versioning-1.9.0.tar.gz"

DEPEND="
	>=dev-python/dunamai-1.21.0[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.11.1[${PYTHON_USEDEP}]
	>=dev-python/poetry-core-1.2.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/poetry_dynamic_versioning-1.9.0"

distutils_enable_tests pytest
