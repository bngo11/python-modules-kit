# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE="None https://pypi.org/project/urllib3/"
SRC_URI="https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz -> urllib3-2.3.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	!>=dev-python/urllib3-2
	!dev-python/urllib3-compat"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/urllib3-2.3.0"