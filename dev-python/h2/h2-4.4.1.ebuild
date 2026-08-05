# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure-Python HTTP/2 protocol implementation"
HOMEPAGE="None https://pypi.org/project/h2/"
SRC_URI="https://files.pythonhosted.org/packages/e7/85/7c366e69d84c17bb778fe41419e1fbcce3033d5b7ce29bbffff0a98b859f/h2-4.4.1.tar.gz -> h2-4.4.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/hpack[${PYTHON_USEDEP}]
	dev-python/hyperframe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/h2-4.4.1"