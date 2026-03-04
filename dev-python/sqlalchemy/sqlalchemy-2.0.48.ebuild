# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="https://www.sqlalchemy.org https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/1f/73/b4a9737255583b5fa858e0bb8e116eb94b88c910164ed2ed719147bde3de/sqlalchemy-2.0.48.tar.gz -> sqlalchemy-2.0.48.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.0.48"