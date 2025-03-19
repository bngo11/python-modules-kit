# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="None https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/98/7d/334fba3c2e30ddb5cb9fca7fb8f883c8093891cd1fb02fcf981f2fc4ca96/setuptools_scm-8.2.1.tar.gz -> setuptools_scm-8.2.1.tar.gz"

DEPEND="
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-8.2.1"