# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="None https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/3f/69/b87a540f6888ebc1f63a6e6138e8dc0827331a9be7c5eb15e3bd40a76281/sqlalchemy-2.1.9.tar.gz -> sqlalchemy-2.1.9.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.1.9"