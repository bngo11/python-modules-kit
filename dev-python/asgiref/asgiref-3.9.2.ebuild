# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ASGI specs, helper code, and adapters"
HOMEPAGE="https://github.com/django/asgiref/ https://pypi.org/project/asgiref/"
SRC_URI="https://files.pythonhosted.org/packages/7f/bf/0f3ecda32f1cb3bf1dca480aca08a7a8a3bdc4bed2343a103f30731565c9/asgiref-3.9.2.tar.gz -> asgiref-3.9.2.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/typing-extensions-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/asgiref-3.9.2"