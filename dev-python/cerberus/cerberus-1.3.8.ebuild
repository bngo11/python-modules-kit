# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Lightweight, extensible schema and data validation tool for Pythondictionaries."
HOMEPAGE="None https://pypi.org/project/Cerberus/"
SRC_URI="https://files.pythonhosted.org/packages/7a/cf/845d32e330e49e34f1a22dc44868750e75485d7c08c07d37795bcf0a780e/cerberus-1.3.8.tar.gz -> cerberus-1.3.8.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/cerberus-1.3.8"