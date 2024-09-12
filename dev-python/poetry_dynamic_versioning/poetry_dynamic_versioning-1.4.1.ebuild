# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Plugin for Poetry to enable dynamic versioning based on VCS tags"
HOMEPAGE="https://github.com/mtkennerly/poetry-dynamic-versioning https://pypi.org/project/poetry-dynamic-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/dd/70/1138211a6e5051d28596922ed39acf20b42819db5ae1f93e465b9a903c28/poetry_dynamic_versioning-1.4.1.tar.gz -> poetry_dynamic_versioning-1.4.1.tar.gz"

DEPEND="
	>=dev-python/dunamai-1.21.0[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.11.1[${PYTHON_USEDEP}]
	>=dev-python/poetry-core-1.2.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/poetry_dynamic_versioning-1.4.1"

distutils_enable_tests pytest
