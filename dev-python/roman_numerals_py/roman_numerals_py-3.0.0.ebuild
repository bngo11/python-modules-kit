# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Manipulate well-formed Roman numerals"
HOMEPAGE="None https://pypi.org/project/roman-numerals-py/"
SRC_URI="https://files.pythonhosted.org/packages/9e/78/9491ab144c9cb2d97aa74d6f632bd6f4be67957de03f945a23a67415d859/roman_numerals_py-3.0.0.tar.gz -> roman_numerals_py-3.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/roman_numerals_py-3.0.0"