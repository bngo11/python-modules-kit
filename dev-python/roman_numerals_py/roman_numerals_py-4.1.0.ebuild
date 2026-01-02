# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="This package is deprecated, switch to roman-numerals."
HOMEPAGE="None https://pypi.org/project/roman-numerals-py/"
SRC_URI="https://files.pythonhosted.org/packages/cb/b5/de96fca640f4f656eb79bbee0e79aeec52e3e0e359f8a3e6a0d366378b64/roman_numerals_py-4.1.0.tar.gz -> roman_numerals_py-4.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/roman_numerals_py-4.1.0"