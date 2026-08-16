# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Jalali implementation of Python's datetime module"
HOMEPAGE="https://github.com/slashmili/python-jalali"
SRC_URI="https://files.pythonhosted.org/packages/e2/b3/8195d5bf80f00cf5f8cd3ae74c083cc483c2a4b72fc86ab3f035b7787bed/jdatetime-6.1.0.tar.gz -> jdatetime-6.1.0.tar.gz"

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