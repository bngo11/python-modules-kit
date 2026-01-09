# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Utility library for gitignore style pattern matching of file paths."
HOMEPAGE="None https://pypi.org/project/pathspec/"
SRC_URI="https://files.pythonhosted.org/packages/4c/b2/bb8e495d5262bfec41ab5cb18f522f1012933347fb5d9e62452d446baca2/pathspec-1.0.3.tar.gz -> pathspec-1.0.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pathspec-1.0.3"