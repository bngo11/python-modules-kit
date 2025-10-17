# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit cmake distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="None https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/2f/7b/a6d8dcb83c457e24a9df1e4d8fd5fb8034d4bbc62f3c324681e8a9ba57c2/pybind11-3.0.1.tar.gz -> pybind11-3.0.1.tar.gz"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pybind11-3.0.1"

python_install() {
	distutils-r1_python_install
	cmake_src_install
}
