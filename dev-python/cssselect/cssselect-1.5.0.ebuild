# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="cssselect parses CSS3 Selectors and translates them to XPath 1.0"
HOMEPAGE="None https://pypi.org/project/cssselect/"
SRC_URI="https://files.pythonhosted.org/packages/8e/5a/6d6fcf922709391fac986f0a03ad4546f4f45b94d10aeb6c1ee041599993/cssselect-1.5.0.tar.gz -> cssselect-1.5.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cssselect-1.5.0"