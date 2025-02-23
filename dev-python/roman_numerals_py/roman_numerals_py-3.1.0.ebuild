# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Manipulate well-formed Roman numerals"
HOMEPAGE="None https://pypi.org/project/roman-numerals-py/"
SRC_URI="https://files.pythonhosted.org/packages/30/76/48fd56d17c5bdbdf65609abbc67288728a98ed4c02919428d4f52d23b24b/roman_numerals_py-3.1.0.tar.gz -> roman_numerals_py-3.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/roman_numerals_py-3.1.0"