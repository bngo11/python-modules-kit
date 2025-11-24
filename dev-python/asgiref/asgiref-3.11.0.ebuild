# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ASGI specs, helper code, and adapters"
HOMEPAGE="https://github.com/django/asgiref/ https://pypi.org/project/asgiref/"
SRC_URI="https://files.pythonhosted.org/packages/76/b9/4db2509eabd14b4a8c71d1b24c8d5734c52b8560a7b1e1a8b56c8d25568b/asgiref-3.11.0.tar.gz -> asgiref-3.11.0.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/typing-extensions-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/asgiref-3.11.0"