# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Backport of CPython tarfile module"
HOMEPAGE="None https://pypi.org/project/backports.tarfile/"
SRC_URI="https://files.pythonhosted.org/packages/78/b9/45c54e950a3425bb1c23011e4fc045b3a9a7bae84eb4de7614a6971210d9/backports_tarfile-1.1.1.tar.gz -> backports_tarfile-1.1.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/backports_tarfile-1.1.1"