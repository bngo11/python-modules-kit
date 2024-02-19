# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Jalali implementation of Python's datetime module"
HOMEPAGE="https://github.com/slashmili/python-jalali"
SRC_URI="https://files.pythonhosted.org/packages/68/e2/f3a974b25118345ad19c050c3bab37d01fcf94ba2be492b9e8b59392d067/jdatetime-4.1.1.tar.gz -> jdatetime-4.1.1.tar.gz"

LICENSE="PYTHON"
SLOT="0"
KEYWORDS="*"

BDEPEND="test? ( dev-python/greenlet[${PYTHON_USEDEP}] )"

DOCS=( README )

distutils_enable_tests pytest

EPYTEST_DESELECT=(
	# unsupported locale setting
	tests/test_jdatetime.py::TestJDateTime::test_with_fa_locale
)