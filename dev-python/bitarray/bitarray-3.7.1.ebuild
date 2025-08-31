# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="efficient arrays of booleans -- C extension"
HOMEPAGE="https://github.com/ilanschnell/bitarray https://pypi.org/project/bitarray/"
SRC_URI="https://files.pythonhosted.org/packages/99/b6/282f5f0331b3877d4e79a8aa1cf63b5113a10f035a39bef1fa1dfe9e9e09/bitarray-3.7.1.tar.gz -> bitarray-3.7.1.tar.gz"

SLOT="0"
LICENSE="PSF-2"
KEYWORDS="*"

python_test() {
	"${PYTHON}" ${PN}/test_${PN}.py || die "Tests fail with ${EPYTHON}"
}