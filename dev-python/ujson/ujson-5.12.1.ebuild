# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Ultra fast JSON encoder and decoder for Python"
HOMEPAGE="https://github.com/ultrajson/ultrajson https://pypi.org/project/ujson/"
SRC_URI="https://files.pythonhosted.org/packages/bc/78/937198ea8708182dd1edbf0237bf255a96feab3f511691ad08b84da98e5d/ujson-5.12.1.tar.gz -> ujson-5.12.1.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/ujson-5.12.1"