# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Ultra fast JSON encoder and decoder for Python"
HOMEPAGE="None https://pypi.org/project/ujson/"
SRC_URI="https://files.pythonhosted.org/packages/e0/60/ad782f70ce03d12ec23288292a17549ca537f9d188227340ac0d082421b3/ujson-6.1.0.tar.gz -> ujson-6.1.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/ujson-6.1.0"