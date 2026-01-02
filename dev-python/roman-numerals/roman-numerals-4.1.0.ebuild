# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Manipulate well-formed Roman numerals"
HOMEPAGE="None https://pypi.org/project/roman-numerals/"
SRC_URI="https://files.pythonhosted.org/packages/ae/f9/41dc953bbeb056c17d5f7a519f50fdf010bd0553be2d630bc69d1e022703/roman_numerals-4.1.0.tar.gz -> roman_numerals-4.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/roman_numerals-${PV}"