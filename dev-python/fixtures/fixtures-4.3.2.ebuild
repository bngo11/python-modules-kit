# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more."
HOMEPAGE="None https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/79/fc/da17efe78bb35b945441170363328ad11d953d69e6273bceb668b1d68c34/fixtures-4.3.2.tar.gz -> fixtures-4.3.2.tar.gz"

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
S="${WORKDIR}/fixtures-4.3.2"