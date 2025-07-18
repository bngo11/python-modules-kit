# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="efficient arrays of booleans -- C extension"
HOMEPAGE="https://github.com/ilanschnell/bitarray https://pypi.org/project/bitarray/"
SRC_URI="https://files.pythonhosted.org/packages/8a/e9/be1722981d43341ec1da6370255c414ec00ba23a99e01fc315dbe4c5c9f4/bitarray-3.5.1.tar.gz -> bitarray-3.5.1.tar.gz"

SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"

python_test() {
	"${PYTHON}" ${PN}/test_${PN}.py || die "Tests fail with ${EPYTHON}"
}