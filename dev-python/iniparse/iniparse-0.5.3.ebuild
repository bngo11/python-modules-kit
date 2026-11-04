# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Better INI parser for Python"
HOMEPAGE="https://pypi.org/project/iniparse"
SRC_URI="https://files.pythonhosted.org/packages/95/2f/d7637e3cbbeb7ca2fddaf0c5986284d5a086c437139523f4bcea95a9f1d0/iniparse-0.5.3.tar.gz -> iniparse-0.5.3.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/six-1.10.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT PSF-2"
KEYWORDS="*"
S="${WORKDIR}/iniparse-0.5.3"