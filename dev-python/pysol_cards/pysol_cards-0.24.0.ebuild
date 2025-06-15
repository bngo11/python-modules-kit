# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Deal PySol FreeCell cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards/
https://pypi.org/project/pysol-cards/
"
SRC_URI="https://files.pythonhosted.org/packages/b8/83/b14bf5b2c8a8c6e6d793c0ebd292e8d82c20e9ee8104045087a1cabc6399/pysol_cards-0.24.0.tar.gz -> pysol_cards-0.24.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/random2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.24.0"