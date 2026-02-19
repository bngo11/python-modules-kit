# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The comprehensive WSGI web application library."
HOMEPAGE="None https://pypi.org/project/Werkzeug/"
SRC_URI="https://files.pythonhosted.org/packages/61/f1/ee81806690a87dab5f5653c1f146c92bc066d7f4cebc603ef88eb9e13957/werkzeug-3.1.6.tar.gz -> werkzeug-3.1.6.tar.gz"

DEPEND=""
RDEPEND="dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/werkzeug-3.1.6"