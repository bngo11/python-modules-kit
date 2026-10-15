# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="cssselect parses CSS3 Selectors and translates them to XPath 1.0"
HOMEPAGE="None https://pypi.org/project/cssselect/"
SRC_URI="https://files.pythonhosted.org/packages/c8/8b/dc32df939ab541fca6ee8964d26aa231dbe231cdc2b2713228161441ba9c/cssselect-1.6.0.tar.gz -> cssselect-1.6.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cssselect-1.6.0"