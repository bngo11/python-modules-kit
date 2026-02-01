# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Fast, Extensible Progress Meter"
HOMEPAGE="None https://pypi.org/project/tqdm/"
SRC_URI="https://files.pythonhosted.org/packages/27/89/4b0001b2dab8df0a5ee2787dcbe771de75ded01f18f1f8d53dedeea2882b/tqdm-4.67.2.tar.gz -> tqdm-4.67.2.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/tqdm-4.67.2"