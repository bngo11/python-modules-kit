# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A simple, correct Python build frontend"
HOMEPAGE="None https://pypi.org/project/build/"
SRC_URI="https://files.pythonhosted.org/packages/bd/67/4898a44ea4f3f8e213b0954ec0aa0a16971d62a6212d6ea3931e97115b99/build-1.6.1.tar.gz -> build-1.6.1.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/packaging-19.0[${PYTHON_USEDEP}]
	>=dev-python/pep517-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/tomli-1.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/build-1.6.1"