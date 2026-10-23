# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Identify specific nodes in a JSON document (RFC 6901) "
HOMEPAGE="https://github.com/stefankoegl/python-json-pointer https://pypi.org/project/jsonpointer/"
SRC_URI="https://files.pythonhosted.org/packages/52/77/9be5cce647fa4d7afa9047c0c1029bc73292c27430e64fc9d2393ccf6727/jsonpointer-3.4.tar.gz -> jsonpointer-3.4.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/jsonpointer-3.4"