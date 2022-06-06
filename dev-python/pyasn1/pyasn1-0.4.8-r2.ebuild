# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_8+ pypy3 )

inherit distutils-r1

DESCRIPTION="ASN.1 library for Python"
HOMEPAGE="
	https://pypi.org/project/pyasn1/
	https://github.com/etingof/pyasn1/
"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""

distutils_enable_tests unittest
distutils_enable_sphinx "docs/source"
