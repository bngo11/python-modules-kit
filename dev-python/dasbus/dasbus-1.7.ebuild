# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="DBus library in Python 3"
HOMEPAGE="https://github.com/rhinstaller/dasbus https://pypi.org/project/dasbus/"
SRC_URI="https://files.pythonhosted.org/packages/37/79/9c5984d723ffbe2e839ee649690f3e1fa6544ab6a17a5150e5ac14a47072/dasbus-1.7.tar.gz -> dasbus-1.7.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/dasbus-1.7"

distutils_enable_tests pytest
