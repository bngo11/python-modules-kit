# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE=" https://pypi.org/project/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/a9/e4/13bf30c7c30ab86a7bc4104b1c943ff2f56c1a07c6d82a71ad034bcef1dc/shtab-1.7.1.tar.gz -> shtab-1.7.1.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/shtab-1.7.1"

distutils_enable_tests pytest

python_test() {
	# Disable pytest-cov
	epytest -o addopts=
}
