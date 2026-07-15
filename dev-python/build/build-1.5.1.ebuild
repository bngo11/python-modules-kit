# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A simple, correct Python build frontend"
HOMEPAGE="None https://pypi.org/project/build/"
SRC_URI="https://files.pythonhosted.org/packages/2d/21/6ec54248b4d0d51f12f3ca4aa77a128077d747a5db86cb5a2fcd9aedecbd/build-1.5.1.tar.gz -> build-1.5.1.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/packaging-19.0[${PYTHON_USEDEP}]
	>=dev-python/pep517-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/tomli-1.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/build-1.5.1"