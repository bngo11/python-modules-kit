# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A Python module to customize the process title"
HOMEPAGE="https://github.com/dvarrazzo/py-setproctitle https://pypi.org/project/setproctitle/"
SRC_URI="https://files.pythonhosted.org/packages/49/b0/6b8a516c5a9e9630bd5293db78314ac012f690305fe93beadea388626efb/setproctitle-1.3.8.tar.gz -> setproctitle-1.3.8.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/setproctitle-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/setproctitle-1.3.8"