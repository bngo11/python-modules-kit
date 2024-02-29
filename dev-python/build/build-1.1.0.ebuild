# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A simple, correct Python build frontend"
HOMEPAGE=" https://pypi.org/project/build/"
SRC_URI="https://files.pythonhosted.org/packages/9c/f8/8e713caf591c7e7d40890493546c5b76d6fc9824ea6907a89168b68ba903/build-1.1.0.tar.gz -> build-1.1.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/packaging-19.0[${PYTHON_USEDEP}]
	>=dev-python/pep517-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/tomli-1.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/build-1.1.0"