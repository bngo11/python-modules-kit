# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure-Python HTTP/2 protocol implementation"
HOMEPAGE="None https://pypi.org/project/h2/"
SRC_URI="https://files.pythonhosted.org/packages/1d/17/afa56379f94ad0fe8defd37d6eb3f89a25404ffc71d4d848893d270325fc/h2-4.3.0.tar.gz -> h2-4.3.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/hpack[${PYTHON_USEDEP}]
	dev-python/hyperframe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/h2-4.3.0"