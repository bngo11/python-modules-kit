# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="None https://pypi.org/project/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/b9/33/032cdc44182491aa708d06a68b62434140d8c50820a087fac7af37703357/arrow-1.4.0.tar.gz -> arrow-1.4.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/arrow-compat )
	dev-python/python-dateutil[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/arrow-1.4.0"