# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extract data from Excel spreadsheets"
HOMEPAGE="http://www.python-excel.org/
"
SRC_URI="https://files.pythonhosted.org/packages/07/5a/377161c2d3538d1990d7af382c79f3b2372e880b65de21b01b1a2b78691e/xlrd-2.0.2.tar.gz -> xlrd-2.0.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/xlrd-2.0.2"