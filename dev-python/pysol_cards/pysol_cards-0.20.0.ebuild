# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Deal PySol FreeCell cards"
HOMEPAGE="https://github.com/shlomif/pysol_cards/
https://pypi.org/project/pysol-cards/
"
SRC_URI="https://files.pythonhosted.org/packages/35/32/7ad044e53351e503c942e64d9b2a5cbaa0e2675faf7cdbcca24899a8eaa8/pysol_cards-0.20.0.tar.gz -> pysol_cards-0.20.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/random2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pysol_cards-0.20.0"