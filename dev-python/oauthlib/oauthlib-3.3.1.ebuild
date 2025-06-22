# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A generic, spec-compliant, thorough implementation of the OAuth request-signing logic"
HOMEPAGE="https://github.com/oauthlib/oauthlib https://pypi.org/project/oauthlib/"
SRC_URI="https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz -> oauthlib-3.3.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pyjwt[${PYTHON_USEDEP}]
	dev-python/blinker[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/oauthlib-3.3.1"