# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more."
HOMEPAGE="None https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/12/ff/2d7d262a2ac563a3c976eae210057d68271f5080f0411792d8e2aa84d9a6/fixtures-4.2.6.tar.gz -> fixtures-4.2.6.tar.gz"

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
S="${WORKDIR}/fixtures-4.2.6"