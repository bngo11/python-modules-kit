# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Incremental is a small library that versions your Python projects"
HOMEPAGE="https://github.com/twisted/incremental https://pypi.org/project/incremental/"
SRC_URI="https://files.pythonhosted.org/packages/27/87/156b374ff6578062965afe30cc57627d35234369b3336cf244b240c8d8e6/incremental-24.7.2.tar.gz -> incremental-24.7.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
BDEPEND="
	test? ( dev-python/twisted[${PYTHON_USEDEP}] )"

python_test() {
	"${EPYTHON}" -m twisted.trial incremental ||
		die "Tests failed on ${EPYTHON}"
}