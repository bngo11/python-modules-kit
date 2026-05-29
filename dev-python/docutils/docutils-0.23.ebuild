# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Docutils -- Python Documentation Utilities"
HOMEPAGE="None https://pypi.org/project/docutils/"
SRC_URI="https://files.pythonhosted.org/packages/39/a4/5180d9afc57e8fca05601dd652bdff19604c218814037fe90ffc7625a50a/docutils-0.23.tar.gz -> docutils-0.23.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/docutils-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/docutils-0.23"