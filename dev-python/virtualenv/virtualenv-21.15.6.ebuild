# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE="None https://pypi.org/project/virtualenv/"
SRC_URI="https://files.pythonhosted.org/packages/b3/bd/e40ad2df6a9efc1f859ea23d63fd7371cff68252833f182ca9af819bb4d3/virtualenv-21.15.6.tar.gz -> virtualenv-21.15.6.tar.gz"

DEPEND=""
RDEPEND="
	<dev-python/distlib-1[${PYTHON_USEDEP}]
	<dev-python/filelock-4[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/virtualenv-21.15.6"