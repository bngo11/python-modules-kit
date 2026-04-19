# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="None https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/cc/f0/35145a3c3baffeef55d4b8324caa33abaa8fa56ab345ecd4b2211d09163e/pybind11-3.0.4.tar.gz -> pybind11-3.0.4.tar.gz"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
BDEPEND="dev-python/scikit-build-core"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pybind11-3.0.4"

python_install() {
	distutils-r1_python_install
}
