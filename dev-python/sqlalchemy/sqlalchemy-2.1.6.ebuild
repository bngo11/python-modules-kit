# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="None https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/36/dc/9addbf490110b5727380059ee542ad8353bdcee45a37ba6a5e0976966ae0/sqlalchemy-2.1.6.tar.gz -> sqlalchemy-2.1.6.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.1.6"