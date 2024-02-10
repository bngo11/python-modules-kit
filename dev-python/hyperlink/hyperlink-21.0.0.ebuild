# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A featureful, correct URL for Python"
HOMEPAGE="
	https://github.com/python-hyper/hyperlink/
	https://pypi.org/project/hyperlink/
"
SRC_URI="https://files.pythonhosted.org/packages/3a/51/1947bd81d75af87e3bb9e34593a4cf118115a8feb451ce7a69044ef1412e/hyperlink-21.0.0.tar.gz -> hyperlink-21.0.0.tar.gz"

LICENSE="BSD MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/idna[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

python_test() {
	# suppresses hypothesis health checks
	local -x CI=1
	epytest
}