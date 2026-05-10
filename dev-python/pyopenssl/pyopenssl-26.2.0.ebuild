# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python wrapper module around the OpenSSL library"
HOMEPAGE="https://github.com/pyca/pyopenssl"
SRC_URI="https://files.pythonhosted.org/packages/1a/51/27a5ad5f939d08f690a326ef9582cda7140555180db71695f6fb747d6a36/pyopenssl-26.2.0.tar.gz -> pyopenssl-26.2.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyopenssl-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pyopenssl-26.2.0"