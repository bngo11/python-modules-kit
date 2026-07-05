# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE="None https://pypi.org/project/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/56/b3/b7c99318ba2b0d7d7e71b78318c162690dd5639cd06e2d3bca9292737e4e/shtab-1.8.1.tar.gz -> shtab-1.8.1.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/shtab-1.8.1"

distutils_enable_tests pytest

python_test() {
	# Disable pytest-cov
	epytest -o addopts=
}
