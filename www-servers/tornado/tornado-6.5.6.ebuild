# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed."
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/50/57/6d7303a77ae439d9189108f76c0c4fd89ee5e2cc8387bffb55232565c4ed/tornado-6.5.6.tar.gz -> tornado-6.5.6.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( www-servers/tornado-compat )
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tornado-6.5.6"