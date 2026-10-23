# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed."
HOMEPAGE="http://www.tornadoweb.org/ https://pypi.org/project/tornado/"
SRC_URI="https://files.pythonhosted.org/packages/d0/02/5f549b1ad5da6267ed1e1fac2eef69257b1979cc812497002499b7895ff9/tornado-6.6.tar.gz -> tornado-6.6.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( www-servers/tornado-compat )
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tornado-6.6"