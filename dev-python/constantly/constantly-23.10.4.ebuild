# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Symbolic constants in Python"
HOMEPAGE="
	https://github.com/twisted/constantly/
	https://pypi.org/project/constantly/
"
SRC_URI="https://files.pythonhosted.org/packages/4d/6f/cb2a94494ff74aa9528a36c5b1422756330a75a8367bf20bd63171fc324d/constantly-23.10.4.tar.gz -> constantly-23.10.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="
	dev-python/versioneer[${PYTHON_USEDEP}]
	test? ( dev-python/twisted[${PYTHON_USEDEP}] )
"

distutils_enable_tests unittest