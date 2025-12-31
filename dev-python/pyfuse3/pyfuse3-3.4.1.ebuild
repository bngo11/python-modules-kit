# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python 3 bindings for libfuse 3 with async I/O support"
HOMEPAGE="https://github.com/libfuse/pyfuse3 https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/9c/db/39003f19d6eb00fafc8210a8ee2703e58553c4c588f71ca413155fd43e32/pyfuse3-3.4.1.tar.gz -> pyfuse3-3.4.1.tar.gz"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.4.1"

distutils_enable_tests pytest
