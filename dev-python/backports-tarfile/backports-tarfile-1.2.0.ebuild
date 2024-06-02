# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Backport of CPython tarfile module"
HOMEPAGE="None https://pypi.org/project/backports.tarfile/"
SRC_URI="https://files.pythonhosted.org/packages/86/72/cd9b395f25e290e633655a100af28cb253e4393396264a98bd5f5951d50f/backports_tarfile-1.2.0.tar.gz -> backports_tarfile-1.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/backports_tarfile-1.2.0"