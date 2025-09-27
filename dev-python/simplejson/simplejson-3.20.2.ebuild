# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Simple, fast, extensible JSON encoder/decoder for Python"
HOMEPAGE="https://github.com/simplejson/simplejson https://pypi.org/project/simplejson/"
SRC_URI="https://files.pythonhosted.org/packages/41/f4/a1ac5ed32f7ed9a088d62a59d410d4c204b3b3815722e2ccfb491fa8251b/simplejson-3.20.2.tar.gz -> simplejson-3.20.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/simplejson-3.20.2"