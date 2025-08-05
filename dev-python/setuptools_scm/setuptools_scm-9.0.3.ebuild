# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="None https://pypi.org/project/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/e0/d5/fc57488ef9f95790adc09bc5228c1e3068c340c5f43f5e9183435f360d63/setuptools_scm-9.0.3.tar.gz -> setuptools_scm-9.0.3.tar.gz"

DEPEND="
	>dev-python/packaging-20[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
RDEPEND="$(python_gen_cond_dep '>=dev-python/tomli-1.0[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools_scm-9.0.3"