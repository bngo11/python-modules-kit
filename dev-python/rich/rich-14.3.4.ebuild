# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
HOMEPAGE="None https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/e9/67/cae617f1351490c25a4b8ac3b8b63a4dda609295d8222bad12242dfdc629/rich-14.3.4.tar.gz -> rich-14.3.4.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/markdown-it-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-14.3.4"