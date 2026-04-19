# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple, fast, extensible JSON encoder/decoder for Python"
HOMEPAGE="https://github.com/simplejson/simplejson https://pypi.org/project/simplejson/"
SRC_URI="https://files.pythonhosted.org/packages/14/91/b0e7a38d63706dde006d1213f9c394ad7702df841c019fb4cf0e3295c58c/simplejson-4.0.1.tar.gz -> simplejson-4.0.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/simplejson-4.0.1"