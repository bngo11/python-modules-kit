# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="None https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/14/f6/4226baf8e38db72465f94f9a3ac81ed16be39bc773c4d6d13af342d3dd94/setuptools_scm-10.1.2.tar.gz -> setuptools_scm-10.1.2.tar.gz"

DEPEND="
	>=dev-python/vcs_versioning-1.0.1[${PYTHON_USEDEP}]
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-10.1.2"