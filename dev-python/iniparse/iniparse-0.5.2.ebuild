# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Better INI parser for Python"
HOMEPAGE="https://pypi.org/project/iniparse"
SRC_URI="https://files.pythonhosted.org/packages/9a/5b/f8b3a923142f9e4cfeafce9b8f7343ead2feb71929365486ce96b5372335/iniparse-0.5.2.tar.gz -> iniparse-0.5.2.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/six-1.10.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT PSF-2"
KEYWORDS="*"
S="${WORKDIR}/iniparse-0.5.2"