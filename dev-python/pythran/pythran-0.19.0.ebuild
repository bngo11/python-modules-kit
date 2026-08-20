# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Ahead of Time compiler for numeric kernels"
HOMEPAGE="None https://pypi.org/project/pythran/"
SRC_URI="https://files.pythonhosted.org/packages/bb/a3/03098a8a5d2c9f801c227cf941d85976934f5f47307ef3d819734370acdc/pythran-0.19.0.tar.gz -> pythran-0.19.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/beniget[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/gast[${PYTHON_USEDEP}]
	dev-python/ply[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pythran-0.19.0"