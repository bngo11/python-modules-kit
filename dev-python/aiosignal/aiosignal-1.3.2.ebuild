# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="aiosignal: a list of registered asynchronous callbacks"
HOMEPAGE="https://github.com/aio-libs/aiosignal https://pypi.org/project/aiosignal/"
SRC_URI="https://files.pythonhosted.org/packages/ba/b5/6d55e80f6d8a08ce22b982eafa278d823b541c925f11ee774b0b9c43473d/aiosignal-1.3.2.tar.gz -> aiosignal-1.3.2.tar.gz"

DEPEND=""
RDEPEND="dev-python/frozenlist[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiosignal-1.3.2"