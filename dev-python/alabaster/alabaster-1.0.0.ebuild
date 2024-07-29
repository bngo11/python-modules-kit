# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="A light, configurable Sphinx theme"
HOMEPAGE="None https://pypi.org/project/alabaster/"
SRC_URI="https://files.pythonhosted.org/packages/a6/f8/d9c74d0daf3f742840fd818d69cfae176fa332022fd44e3469487d5a9420/alabaster-1.0.0.tar.gz -> alabaster-1.0.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/alabaster-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/alabaster-1.0.0"