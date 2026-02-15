# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A python module that makes working with XML feel like you are working with JSON"
HOMEPAGE="https://github.com/martinblech/xmltodict
"
SRC_URI="https://files.pythonhosted.org/packages/a9/66/d1242ce8748c698e0036837dfbb530480e31f11d3ecf7101cd4e30d29913/xmltodict-1.0.3.tar.gz -> xmltodict-1.0.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/xmltodict-1.0.3"