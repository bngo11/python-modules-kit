# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ASGI specs, helper code, and adapters"
HOMEPAGE="https://github.com/django/asgiref/ https://pypi.org/project/asgiref/"
SRC_URI="https://files.pythonhosted.org/packages/90/61/0aa957eec22ff70b830b22ff91f825e70e1ef732c06666a805730f28b36b/asgiref-3.9.1.tar.gz -> asgiref-3.9.1.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/typing-extensions-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/asgiref-3.9.1"