# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A generic, spec-compliant, thorough implementation of the OAuth request-signing logic"
HOMEPAGE="https://github.com/oauthlib/oauthlib https://pypi.org/project/oauthlib/"
SRC_URI="https://files.pythonhosted.org/packages/33/17/2bb072de0b990303c985f26869fd47bb179024a051f47e7f9d208eb92f8e/oauthlib-4.0.1.tar.gz -> oauthlib-4.0.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pyjwt[${PYTHON_USEDEP}]
	dev-python/blinker[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/oauthlib-4.0.1"