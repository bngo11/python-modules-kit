# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Docutils -- Python Documentation Utilities"
HOMEPAGE="None https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/4a/c0/89fe6215b443b919cb98a5002e107cb5026854ed1ccb6b5833e0768419d1/docutils-0.22.2.tar.gz -> docutils-0.22.2.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/docutils-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.22.2"