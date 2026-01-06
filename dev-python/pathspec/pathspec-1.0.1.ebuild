# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Utility library for gitignore style pattern matching of file paths."
HOMEPAGE="None https://pypi.org/project/pathspec/"
SRC_URI="https://files.pythonhosted.org/packages/28/2e/83722ece0f6ee24387d6cb830dd562ddbcd6ce0b9d76072c6849670c31b4/pathspec-1.0.1.tar.gz -> pathspec-1.0.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pathspec-1.0.1"