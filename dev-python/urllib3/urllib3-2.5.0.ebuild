# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more."
HOMEPAGE="None https://pypi.org/project/urllib3/"
SRC_URI="https://files.pythonhosted.org/packages/15/22/9ee70a2574a4f4599c47dd506532914ce044817c7752a79b6a51286319bc/urllib3-2.5.0.tar.gz -> urllib3-2.5.0.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	!>=dev-python/urllib3-2
	!dev-python/urllib3-compat"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/urllib3-2.5.0"