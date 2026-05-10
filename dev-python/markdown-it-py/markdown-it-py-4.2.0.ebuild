# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Python port of markdown-it. Markdown parsing, done right!"
HOMEPAGE="None https://pypi.org/project/markdown-it-py/"
SRC_URI="https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz -> markdown_it_py-4.2.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/mdurl[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/markdown_it_py-4.2.0"