# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="python library for reading and writing collada documents"
HOMEPAGE="None https://pypi.org/project/pycollada/"
SRC_URI="https://files.pythonhosted.org/packages/25/13/21debba42c0c255acba29f42af8785ecad656948d30fde5302d5e4494d1c/pycollada-0.9.2.tar.gz -> pycollada-0.9.2.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pycollada-0.9.2"