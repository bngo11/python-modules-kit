# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

MY_PN="SecretStorage"

DESCRIPTION="Python bindings to FreeDesktop.org Secret Service API."
HOMEPAGE="https://github.com/mitya57/secretstorage https://pypi.org/project/SecretStorage/"
SRC_URI="https://files.pythonhosted.org/packages/32/8a/ed6747b1cc723c81f526d4c12c1b1d43d07190e1e8258dbf934392fc850e/secretstorage-3.4.1.tar.gz -> secretstorage-3.4.1.tar.gz"
S="${WORKDIR}/secretstorage-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/cryptography[${PYTHON_USEDEP}]
	>=dev-python/jeepney-0.4.2[${PYTHON_USEDEP}]
"
BDEPEND="
	test? ( !hppa? ( !sparc? (
		gnome-base/gnome-keyring
		sys-apps/dbus
	) ) )
"

distutils_enable_tests unittest
distutils_enable_sphinx docs \
	dev-python/alabaster

src_test() {
	case ${ARCH} in
		hppa|sparc)
			einfo "gnome-keyring is not supported on ${ARCH}, skipping tests"
			return
			;;
	esac

	distutils-r1_src_test
}

python_test() {
	dbus-run-session "${EPYTHON}" -m unittest discover -v -s tests \
		|| die "tests failed with ${EPYTHON}"
}