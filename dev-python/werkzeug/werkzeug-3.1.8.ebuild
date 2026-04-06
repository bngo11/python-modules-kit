# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The comprehensive WSGI web application library."
HOMEPAGE="None https://pypi.org/project/Werkzeug/"
SRC_URI="https://files.pythonhosted.org/packages/dd/b2/381be8cfdee792dd117872481b6e378f85c957dd7c5bca38897b08f765fd/werkzeug-3.1.8.tar.gz -> werkzeug-3.1.8.tar.gz"

DEPEND=""
RDEPEND="dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/werkzeug-3.1.8"