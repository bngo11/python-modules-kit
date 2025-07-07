# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="efficient arrays of booleans -- C extension"
HOMEPAGE="https://github.com/ilanschnell/bitarray https://pypi.org/project/bitarray/"
SRC_URI="https://files.pythonhosted.org/packages/0d/0f/6ecf00ec04622b8309aca3cfbdba20d5399d9e4e5a4b156d9ffd2e5610d3/bitarray-3.5.0.tar.gz -> bitarray-3.5.0.tar.gz"

SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"

python_test() {
	"${PYTHON}" ${PN}/test_${PN}.py || die "Tests fail with ${EPYTHON}"
}