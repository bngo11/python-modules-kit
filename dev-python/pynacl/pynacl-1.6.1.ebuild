# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python binding to the Networking and Cryptography (NaCl) library"
HOMEPAGE="https://github.com/pyca/pynacl/ https://pypi.org/project/PyNaCl/"
SRC_URI="https://files.pythonhosted.org/packages/b2/46/aeca065d227e2265125aea590c9c47fbf5786128c9400ee0eb7c88931f06/pynacl-1.6.1.tar.gz -> pynacl-1.6.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-libs/libsodium"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pynacl-1.6.1"

S="${WORKDIR}/PyNaCl-${PV}"
