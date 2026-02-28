# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A python utility/library to sort imports"
HOMEPAGE="https://pypi.org/project/isort/"
SRC_URI="https://files.pythonhosted.org/packages/ef/7c/ec4ab396d31b3b395e2e999c8f46dec78c5e29209fac49d1f4dace04041d/isort-8.0.1.tar.gz -> isort-8.0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools"

src_prepare() {
	sed -E "/tests.*,$/d" -i setup.py
	sed -E "N;s/,\n 'tests.*\]/\]/" -i setup.py
	default
}