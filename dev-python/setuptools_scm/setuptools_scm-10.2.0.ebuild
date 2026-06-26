# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="None https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/61/fb/6b22ba201305ec33fa68c1419e984abe1aaee1b236a5e1186cc805738e95/setuptools_scm-10.2.0.tar.gz -> setuptools_scm-10.2.0.tar.gz"

DEPEND="
	>=dev-python/vcs_versioning-1.0.1[${PYTHON_USEDEP}]
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-10.2.0"