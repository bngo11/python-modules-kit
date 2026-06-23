# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python 3 bindings for libfuse 3 with async I/O support"
HOMEPAGE="None https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/b9/a9/ce2c0513e9611ee2ffeeb482a33d23a210326801d48866df30a989562d43/pyfuse3-3.5.0.tar.gz -> pyfuse3-3.5.0.tar.gz"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.5.0"

distutils_enable_tests pytest
