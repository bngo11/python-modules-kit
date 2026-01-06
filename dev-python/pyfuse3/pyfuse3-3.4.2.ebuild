# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python 3 bindings for libfuse 3 with async I/O support"
HOMEPAGE="None https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/98/c8/8d4b00354b0aae1660310c6853cad7228af7efc344b3ff7d8cc4a894343d/pyfuse3-3.4.2.tar.gz -> pyfuse3-3.4.2.tar.gz"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.4.2"

distutils_enable_tests pytest
