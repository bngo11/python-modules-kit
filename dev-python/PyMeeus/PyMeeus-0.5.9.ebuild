# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Library of astronomical algorithms in Python"
HOMEPAGE="https://github.com/architest/pymeeus"
SRC_URI="https://files.pythonhosted.org/packages/e7/a0/85048fde43f0e3fda27aeac6189eed6da218b3ab7492f6eff710550fb515/PyMeeus-0.5.9.tar.gz -> PyMeeus-0.5.9.tar.gz"

LICENSE="GPL-3 LGPL-3"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest