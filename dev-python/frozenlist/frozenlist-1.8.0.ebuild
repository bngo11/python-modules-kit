# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="A list-like structure which implements collections.abc.MutableSequence"
HOMEPAGE="https://github.com/aio-libs/frozenlist https://pypi.org/project/frozenlist/"
SRC_URI="https://files.pythonhosted.org/packages/2d/f5/c831fac6cc817d26fd54c7eaccd04ef7e0288806943f7cc5bbf69f3ac1f0/frozenlist-1.8.0.tar.gz -> frozenlist-1.8.0.tar.gz"

DEPEND="
	dev-python/expandvars[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/frozenlist-1.8.0"