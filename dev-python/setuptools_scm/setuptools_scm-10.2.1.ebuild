# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="None https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/5d/b1/d0b97ffd2856a7d19c63024a89fb84813cb9d2ed7fa8fdbedf9e2f13a9ab/setuptools_scm-10.2.1.tar.gz -> setuptools_scm-10.2.1.tar.gz"

DEPEND="
	>=dev-python/vcs_versioning-1.0.1[${PYTHON_USEDEP}]
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-10.2.1"