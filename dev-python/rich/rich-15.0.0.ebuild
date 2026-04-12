# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
HOMEPAGE="None https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz -> rich-15.0.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/markdown-it-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-15.0.0"