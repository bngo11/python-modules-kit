# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Simplifies the usage of decorators for the average programmer"
HOMEPAGE="
	https://github.com/micheles/decorator/
	https://pypi.org/project/decorator/
"
SRC_URI="https://files.pythonhosted.org/packages/5c/50/a39dd7ab407e93978dfa07d109b7d633e37958c89f30cbcec061b77b3ebc/decorator-5.3.0.tar.gz -> decorator-5.3.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

DOCS=( CHANGES.md )

python_test() {
	"${EPYTHON}" src/tests/test.py -v || die "Tests failed with ${EPYTHON}"
}