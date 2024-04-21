# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Backport of CPython tarfile module"
HOMEPAGE="https://github.com/jaraco/backports.tarfile https://pypi.org/project/backports.tarfile/"
SRC_URI="https://files.pythonhosted.org/packages/02/f9/7672fdfc4503fb0387ab14a3b76ccba7dd9ac5a04cb6fa52d013f23c46bf/backports_tarfile-1.1.0.tar.gz -> backports_tarfile-1.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/${P/-/.}"