# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Inline Matplotlib backend for Jupyter"
HOMEPAGE="None https://pypi.org/project/matplotlib-inline/"
SRC_URI="https://files.pythonhosted.org/packages/c7/74/97e72a36efd4ae2bccb3463284300f8953f199b5ffbc04cbbb0ec78f74b1/matplotlib_inline-0.2.1.tar.gz -> matplotlib_inline-0.2.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/traitlets[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/matplotlib_inline-0.2.1"