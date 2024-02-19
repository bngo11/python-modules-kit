# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Accurate Hijri-Gregorian date converter based on the Umm al-Qura calendar"
HOMEPAGE="https://github.com/dralshehri/hijri-converter"
SRC_URI="https://files.pythonhosted.org/packages/8e/ca/f26e91818264caca15ba9ef71d99dea51c8391bf2818aabde278d9642441/hijri-converter-2.3.1.tar.gz -> hijri-converter-2.3.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest

distutils_enable_sphinx docs