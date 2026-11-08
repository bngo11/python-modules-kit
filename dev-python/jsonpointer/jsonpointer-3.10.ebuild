# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Identify specific nodes in a JSON document (RFC 6901) "
HOMEPAGE="https://github.com/stefankoegl/python-json-pointer https://pypi.org/project/jsonpointer/"
SRC_URI="https://files.pythonhosted.org/packages/93/f6/d1109cbb2c7cb692b432071802028052ba8d275c613c1a1cce427bc62c97/jsonpointer-3.10.tar.gz -> jsonpointer-3.10.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/jsonpointer-3.10"