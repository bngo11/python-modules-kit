# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="None https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/53/c4/6a57fe8bc24ebb438519d20ea4dcab48e4e388b1da8a53783326e762c8b9/sqlalchemy-2.1.2.tar.gz -> sqlalchemy-2.1.2.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.1.2"