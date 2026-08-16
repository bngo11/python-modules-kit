# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Character encoding aliases for legacy web content"
HOMEPAGE="None https://pypi.org/project/webencodings/"
SRC_URI="https://files.pythonhosted.org/packages/d5/a0/8fd707bcb776a7be556bad06a2ea5fb9bd519df78ef8e26f70ccf0f38bff/webencodings-0.6.1.tar.gz -> webencodings-0.6.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/webencodings-0.6.1"