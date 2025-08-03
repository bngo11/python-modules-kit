# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Docutils -- Python Documentation Utilities"
HOMEPAGE="None https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/e9/86/5b41c32ecedcfdb4c77b28b6cb14234f252075f8cdb254531727a35547dd/docutils-0.22.tar.gz -> docutils-0.22.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/docutils-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.22"