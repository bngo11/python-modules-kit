# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Date Api that support Hijri Umalqurra calendar"
HOMEPAGE="https://github.com/tytkal/python-hijiri-ummalqura"
SRC_URI="https://files.pythonhosted.org/packages/59/d7/d57cfbf2ef0fd5f79c94bb4cc1fdb9af49eba592556e4e6891e2d5522fba/umalqurra-0.2.tar.gz -> umalqurra-0.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"