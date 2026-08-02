# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE="None https://pypi.org/project/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/fc/67/179150085f25bb5435ed81befd9a0152764b3bb1b1167f7625fc320d9c56/shtab-1.9.2.tar.gz -> shtab-1.9.2.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/shtab-1.9.2"

distutils_enable_tests pytest

python_test() {
	# Disable pytest-cov
	epytest -o addopts=
}
