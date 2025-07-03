# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ASGI specs, helper code, and adapters"
HOMEPAGE="https://github.com/django/asgiref/ https://pypi.org/project/asgiref/"
SRC_URI="https://files.pythonhosted.org/packages/6a/68/fb4fb78c9eac59d5e819108a57664737f855c5a8e9b76aec1738bb137f9e/asgiref-3.9.0.tar.gz -> asgiref-3.9.0.tar.gz"

DEPEND=""
RDEPEND=">=dev-python/typing-extensions-4[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/asgiref-3.9.0"