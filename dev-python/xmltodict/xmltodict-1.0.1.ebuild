# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A python module that makes working with XML feel like you are working with JSON"
HOMEPAGE="https://github.com/martinblech/xmltodict
"
SRC_URI="https://files.pythonhosted.org/packages/a0/38/ef8e9bedc88707e0c481bd4a1ee3a59509d4c7a1d07da41b3333e903d603/xmltodict-1.0.1.tar.gz -> xmltodict-1.0.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/xmltodict-1.0.1"