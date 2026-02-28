# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Extensions to the Python standard library unit testing framework"
HOMEPAGE="None https://pypi.org/project/testtools/"
SRC_URI="https://files.pythonhosted.org/packages/97/d0/e7a37e196235f2d438114359c041a614d6c8ea59dc839375faf518564c66/testtools-2.8.5.tar.gz -> testtools-2.8.5.tar.gz"

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
S="${WORKDIR}/testtools-2.8.5"