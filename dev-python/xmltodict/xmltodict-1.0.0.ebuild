# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A python module that makes working with XML feel like you are working with JSON"
HOMEPAGE="https://github.com/martinblech/xmltodict
"
SRC_URI="https://files.pythonhosted.org/packages/8b/79/1b8215b967eb66b92ba323a2d70ff820188b5dd18c8975326fa06e7d50ef/xmltodict-1.0.0.tar.gz -> xmltodict-1.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/xmltodict-1.0.0"