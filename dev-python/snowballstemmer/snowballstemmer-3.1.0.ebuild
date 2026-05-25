# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Stemmer algorithms generated from Snowball algorithms"
HOMEPAGE="https://github.com/shibukawa/snowball_py https://pypi.org/project/snowballstemmer/"
SRC_URI="https://files.pythonhosted.org/packages/63/ee/67eef9600338e245ad7838230969a34c823ddbdbccc5e1fc43cd75b55bc9/snowballstemmer-3.1.0.tar.gz -> snowballstemmer-3.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""