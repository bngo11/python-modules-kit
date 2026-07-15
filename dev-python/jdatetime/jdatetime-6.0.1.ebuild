# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Jalali implementation of Python's datetime module"
HOMEPAGE="https://github.com/slashmili/python-jalali"
SRC_URI="https://files.pythonhosted.org/packages/b9/1a/6f49f59d771db850c5c895e1fc8dd7fb495e146ba7b2b247df299442bb64/jdatetime-6.0.1.tar.gz -> jdatetime-6.0.1.tar.gz"

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