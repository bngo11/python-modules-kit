# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A friendly Python library for async concurrency and I/O"
HOMEPAGE="None https://pypi.org/project/trio/"
SRC_URI="https://files.pythonhosted.org/packages/9c/e2/1db4e79abb730bbf048c1024a622b0e1e895f5b0e18c59f3f6b3e4b296ef/trio-0.35.0.tar.gz -> trio-0.35.0.tar.gz"

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
S="${WORKDIR}/trio-0.35.0"