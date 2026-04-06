# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE="None https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/c3/b2/bc9c9196916376152d655522fdcebac55e66de6603a76a02bca1b6414f6c/pygments-2.20.0.tar.gz -> pygments-2.20.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pygments-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pygments-2.20.0"