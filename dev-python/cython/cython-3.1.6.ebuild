# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/ https://pypi.org/project/Cython/"
SRC_URI="https://files.pythonhosted.org/packages/e3/58/6a8321cc0791876dc2509d7a22fc75535a1a7aa770b3496772f58b0a53a4/cython-3.1.6.tar.gz -> cython-3.1.6.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cython-${PV}"