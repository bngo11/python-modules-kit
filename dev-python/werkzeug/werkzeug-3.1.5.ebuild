# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The comprehensive WSGI web application library."
HOMEPAGE="None https://pypi.org/project/Werkzeug/"
SRC_URI="https://files.pythonhosted.org/packages/5a/70/1469ef1d3542ae7c2c7b72bd5e3a4e6ee69d7978fa8a3af05a38eca5becf/werkzeug-3.1.5.tar.gz -> werkzeug-3.1.5.tar.gz"

DEPEND=""
RDEPEND="dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/werkzeug-3.1.5"