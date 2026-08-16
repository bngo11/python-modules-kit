# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE="None https://pypi.org/project/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/db/1e/6abd32b6c79e64b8e2e2027b05a65ff5215d913997de4fb973f248f79350/shtab-1.11.0.tar.gz -> shtab-1.11.0.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/shtab-1.11.0"

distutils_enable_tests pytest

python_test() {
	# Disable pytest-cov
	epytest -o addopts=
}
