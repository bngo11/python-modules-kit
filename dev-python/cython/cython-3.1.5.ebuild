# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/ https://pypi.org/project/Cython/"
SRC_URI="https://files.pythonhosted.org/packages/4d/ab/4e980fbfbc894f95854aabff68a029dd6044a9550c480a1049a65263c72b/cython-3.1.5.tar.gz -> cython-3.1.5.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cython-${PV}"