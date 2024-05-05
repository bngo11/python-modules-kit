# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="The Cython compiler for writing C extensions in the Python language."
HOMEPAGE="https://cython.org/ https://pypi.org/project/Cython/"
SRC_URI="https://files.pythonhosted.org/packages/d5/f7/2fdd9205a2eedee7d9b0abbf15944a1151eb943001dbdc5233b1d1cfc34e/Cython-3.0.10.tar.gz -> Cython-3.0.10.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/Cython-3.0.10"