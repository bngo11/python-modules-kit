# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="None https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/41/50/b83d65efc1914681f5aded4ce37c703408a9bb74829f27f041560ca52ffb/pybind11-3.0.3.tar.gz -> pybind11-3.0.3.tar.gz"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
BDEPEND="dev-python/scikit-build-core"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pybind11-3.0.3"

python_install() {
	distutils-r1_python_install
}
