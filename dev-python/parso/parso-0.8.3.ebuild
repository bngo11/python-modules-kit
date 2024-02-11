# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A python parser that supports error recovery and round-trip parsing"
HOMEPAGE="
	https://github.com/davidhalter/parso/
	https://pypi.org/project/parso/
"
SRC_URI="https://files.pythonhosted.org/packages/a2/0e/41f0cca4b85a6ea74d66d2226a7cda8e41206a624f5b330b958ef48e2e52/parso-0.8.3.tar.gz -> parso-0.8.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

distutils_enable_sphinx docs
distutils_enable_tests pytest

EPYTEST_DESELECT=(
	# py3.10 changed exception messages
	test/test_python_errors.py::test_python_exception_matches
	# With python3.11 this additional file is run by pytest,
	# but it is not actually a test and thus fails
	parso/python/token.py::parso.python.token.PythonTokenTypes
)