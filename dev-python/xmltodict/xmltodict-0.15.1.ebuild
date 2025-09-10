# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A python module that makes working with XML feel like you are working with JSON"
HOMEPAGE="https://github.com/martinblech/xmltodict
"
SRC_URI="https://files.pythonhosted.org/packages/d7/7a/42f705c672e77dc3ce85a6823bb289055323aac30de7c4b9eca1e28b2c17/xmltodict-0.15.1.tar.gz -> xmltodict-0.15.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/xmltodict-0.15.1"