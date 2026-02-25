# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more."
HOMEPAGE="None https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/ab/f5/4dbf6053895931a5110a38d7ebacecce41683cb9f01377ba8cc0254d1bc8/fixtures-4.3.1.tar.gz -> fixtures-4.3.1.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/fixtures-compat )
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/testtools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0 BSD"
KEYWORDS="*"
S="${WORKDIR}/fixtures-4.3.1"