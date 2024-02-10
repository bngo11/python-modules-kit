# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Incremental is a small library that versions your Python projects"
HOMEPAGE="https://github.com/twisted/incremental https://pypi.org/project/incremental/"
SRC_URI="https://files.pythonhosted.org/packages/86/42/9e87f04fa2cd40e3016f27a4b4572290e95899c6dce317e2cdb580f3ff09/incremental-22.10.0.tar.gz -> incremental-22.10.0.tar.gz"

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