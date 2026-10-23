# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE="None https://pypi.org/project/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/ff/dd/e58588cf2d02266d504f4399979740b8b2b61fbd7719a89578afaa6558a3/shtab-1.13.0.tar.gz -> shtab-1.13.0.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/shtab-1.13.0"

distutils_enable_tests pytest

python_test() {
	# Disable pytest-cov
	epytest -o addopts=
}
