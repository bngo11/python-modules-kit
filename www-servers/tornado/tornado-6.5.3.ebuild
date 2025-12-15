# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed."
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/7f/2e/3d22d478f27cb4b41edd4db7f10cd7846d0a28ea443342de3dba97035166/tornado-6.5.3.tar.gz -> tornado-6.5.3.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( www-servers/tornado-compat )
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tornado-6.5.3"