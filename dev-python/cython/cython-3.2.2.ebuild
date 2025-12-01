# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/ https://pypi.org/project/Cython/"
SRC_URI="https://files.pythonhosted.org/packages/29/17/55fc687ba986f2210298fa2f60fec265fa3004c3f9a1e958ea1fe2d4e061/cython-3.2.2.tar.gz -> cython-3.2.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cython-${PV}"