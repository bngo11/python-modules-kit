# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Editable installations"
HOMEPAGE="None https://pypi.org/project/editables/"
SRC_URI="https://files.pythonhosted.org/packages/82/f8/02a4e9a0cb961b0feeb431ac96b231c157ecdcbbeacafe9e2fdb4b1dde39/editables-0.6.tar.gz -> editables-0.6.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/editables-0.6"