# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Extensions to the Python standard library unit testing framework"
HOMEPAGE="None https://pypi.org/project/testtools/"
SRC_URI="https://files.pythonhosted.org/packages/ac/9c/a7470014e8e27bd147731f7aa108cb5d1b0609e0a257a49d6ebef2927bc9/testtools-2.8.2.tar.gz -> testtools-2.8.2.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/testtools-compat )
	dev-python/pbr[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/testtools-2.8.2"