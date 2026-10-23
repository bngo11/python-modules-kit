# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Extensions to the standard Python datetime module"
HOMEPAGE="https://github.com/dateutil/dateutil https://pypi.org/project/python-dateutil/"
SRC_URI="https://files.pythonhosted.org/packages/0e/df/f15f80383f152452d8985b36d95cb8751f901a3e0ff4cd27f7e118f168e2/python_dateutil-3.0.0.tar.gz -> python_dateutil-3.0.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 BSD"
KEYWORDS="*"
S="${WORKDIR}/python_dateutil-3.0.0"