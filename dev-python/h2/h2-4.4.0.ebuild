# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Pure-Python HTTP/2 protocol implementation"
HOMEPAGE="None https://pypi.org/project/h2/"
SRC_URI="https://files.pythonhosted.org/packages/30/d4/a7d6fb3f58be99d65cbf2d3f766896217a2921d0f3ab10711c45dc1519ee/h2-4.4.0.tar.gz -> h2-4.4.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/hpack[${PYTHON_USEDEP}]
	dev-python/hyperframe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/h2-4.4.0"