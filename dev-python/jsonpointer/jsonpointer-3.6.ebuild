# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Identify specific nodes in a JSON document (RFC 6901) "
HOMEPAGE="https://github.com/stefankoegl/python-json-pointer https://pypi.org/project/jsonpointer/"
SRC_URI="https://files.pythonhosted.org/packages/54/04/e35b34f4e441473e62d82d6ed9a8f748d93d895f4c05d4e645aa0fde51d7/jsonpointer-3.6.tar.gz -> jsonpointer-3.6.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/jsonpointer-3.6"