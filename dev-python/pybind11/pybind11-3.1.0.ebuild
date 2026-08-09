# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="None https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/76/f3/95b0f40b31df41dbfe6bb0857419c9442c15839cbac4796f1c26ae0b6081/pybind11-3.1.0.tar.gz -> pybind11-3.1.0.tar.gz"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
BDEPEND="dev-python/scikit-build-core"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pybind11-3.1.0"

python_install() {
	distutils-r1_python_install
}
