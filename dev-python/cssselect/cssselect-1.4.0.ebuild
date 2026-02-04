# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="cssselect parses CSS3 Selectors and translates them to XPath 1.0"
HOMEPAGE="None https://pypi.org/project/cssselect/"
SRC_URI="https://files.pythonhosted.org/packages/ec/2e/cdfd8b01c37cbf4f9482eefd455853a3cf9c995029a46acd31dfaa9c1dd6/cssselect-1.4.0.tar.gz -> cssselect-1.4.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cssselect-1.4.0"