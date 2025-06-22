# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python style guide checker"
HOMEPAGE="https://pycodestyle.pycqa.org/ https://pypi.org/project/pycodestyle/"
SRC_URI="https://files.pythonhosted.org/packages/11/e0/abfd2a0d2efe47670df87f3e3a0e2edda42f055053c85361f19c0e2c1ca8/pycodestyle-2.14.0.tar.gz -> pycodestyle-2.14.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycodestyle-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pycodestyle-2.14.0"