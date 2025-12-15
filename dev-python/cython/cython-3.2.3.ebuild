# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/ https://pypi.org/project/Cython/"
SRC_URI="https://files.pythonhosted.org/packages/39/e1/c0d92b1258722e1bc62a12e630c33f1f842fdab53fd8cd5de2f75c6449a9/cython-3.2.3.tar.gz -> cython-3.2.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cython-${PV}"