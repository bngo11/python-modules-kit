# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="None https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/a8/cb/7c68da82239ffae9378eca076afe14c310e17a4f01e3d315112f266e26c7/sqlalchemy-2.1.1.tar.gz -> sqlalchemy-2.1.1.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.1.1"