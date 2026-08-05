# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Automagic shell tab completion for Python CLI applications"
HOMEPAGE="None https://pypi.org/project/shtab/"
SRC_URI="https://files.pythonhosted.org/packages/fb/79/789eac85ffa705c1405e8524bd99b88b882b4495cd6d2bf30bfa9af909e7/shtab-1.9.3.tar.gz -> shtab-1.9.3.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/shtab-1.9.3"

distutils_enable_tests pytest

python_test() {
	# Disable pytest-cov
	epytest -o addopts=
}
