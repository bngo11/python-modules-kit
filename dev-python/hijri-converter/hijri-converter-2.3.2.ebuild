# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Accurate Hijri-Gregorian date converter based on the Umm al-Qura calendar"
HOMEPAGE="https://github.com/dralshehri/hijri-converter"
SRC_URI="https://files.pythonhosted.org/packages/a8/9e/2d06c74cb8588cee7006b5a3caeee2eb3e4573b4dfdf583a1efe2bad3257/hijri_converter-2.3.2.tar.gz -> hijri_converter-2.3.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/hijri_converter-${PV}"

distutils_enable_tests pytest

distutils_enable_sphinx docs