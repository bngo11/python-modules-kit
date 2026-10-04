# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="gmpy2 interface to GMP, MPFR, and MPC for Python"
HOMEPAGE="None https://pypi.org/project/gmpy2/"
SRC_URI="https://files.pythonhosted.org/packages/0b/3d/1c648af871024438207d5a017fb3f0ebc6da6b59bb9ff6f5047464a3192d/gmpy2-2.3.2.tar.gz -> gmpy2-2.3.2.tar.gz"

DEPEND="
	dev-libs/mpc:=
	dev-libs/mpfr:=
	dev-libs/gmp:=
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gmpy2-2.3.2"