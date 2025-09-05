# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A Python module to customize the process title"
HOMEPAGE="https://github.com/dvarrazzo/py-setproctitle https://pypi.org/project/setproctitle/"
SRC_URI="https://files.pythonhosted.org/packages/8d/48/49393a96a2eef1ab418b17475fb92b8fcfad83d099e678751b05472e69de/setproctitle-1.3.7.tar.gz -> setproctitle-1.3.7.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/setproctitle-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/setproctitle-1.3.7"