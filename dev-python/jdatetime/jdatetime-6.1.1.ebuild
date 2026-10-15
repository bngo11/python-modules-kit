# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Jalali implementation of Python's datetime module"
HOMEPAGE="https://github.com/slashmili/python-jalali"
SRC_URI="https://files.pythonhosted.org/packages/f6/6d/5de9a677b405b279414fca3472daa381d51fa1e5a5e47a64d92b22eaae27/jdatetime-6.1.1.tar.gz -> jdatetime-6.1.1.tar.gz"

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