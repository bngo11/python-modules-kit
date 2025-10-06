# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Classes Without Boilerplate"
HOMEPAGE="None https://pypi.org/project/attrs/"
SRC_URI="https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz -> attrs-25.4.0.tar.gz"

DEPEND="
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/attrs-25.4.0"