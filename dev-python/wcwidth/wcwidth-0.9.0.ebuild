# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="Measures number of Terminal column cells of wide-character codes"
HOMEPAGE="https://pypi.org/project/wcwidth/ https://github.com/jquast/wcwidth"
SRC_URI="https://files.pythonhosted.org/packages/90/be/0553582644877cc0a46ab505266055c8af0032c9ad5cfd7e35398c8af2a6/wcwidth-0.9.0.tar.gz -> wcwidth-0.9.0.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

distutils_enable_tests pytest