# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Module providing ASCII transliterations of Unicode text"
HOMEPAGE="https://pypi.org/project/Unidecode/"
SRC_URI="https://files.pythonhosted.org/packages/94/7d/a8a765761bbc0c836e397a2e48d498305a865b70a8600fd7a942e85dcf63/Unidecode-1.4.0.tar.gz -> Unidecode-1.4.0.tar.gz"
S="${WORKDIR}/Unidecode-${PV}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests unittest