# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Backport of CPython tarfile module"
HOMEPAGE="https://github.com/jaraco/backports.tarfile https://pypi.org/project/backports.tarfile/"
SRC_URI="https://files.pythonhosted.org/packages/1d/f5/2f268125bdd8f6d5cce1d6ba19fc0c58a6d65d3f46f27df677236d58620a/backports.tarfile-1.0.0.tar.gz -> backports.tarfile-1.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/${P/-/.}"