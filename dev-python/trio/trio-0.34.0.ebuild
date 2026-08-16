# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A friendly Python library for async concurrency and I/O"
HOMEPAGE="None https://pypi.org/project/trio/"
SRC_URI="https://files.pythonhosted.org/packages/92/dc/a2d25ed73ad49cfd79bf18d262577c3731c98e382284e28d522f49a0df35/trio-0.34.0.tar.gz -> trio-0.34.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/attrs-20.1.0[${PYTHON_USEDEP}]
	dev-python/sortedcontainers[${PYTHON_USEDEP}]
	>=dev-python/async-generator-1.9[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/outcome[${PYTHON_USEDEP}]
	dev-python/sniffio[${PYTHON_USEDEP}]
	dev-python/exceptiongroup[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/trio-0.34.0"