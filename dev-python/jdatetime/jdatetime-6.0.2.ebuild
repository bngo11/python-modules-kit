# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Jalali implementation of Python's datetime module"
HOMEPAGE="https://github.com/slashmili/python-jalali"
SRC_URI="https://files.pythonhosted.org/packages/68/6b/bece93eac24d2f8a5f7e6665a13a5ade92a67aa976e22c602f97fb40f751/jdatetime-6.0.2.tar.gz -> jdatetime-6.0.2.tar.gz"

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