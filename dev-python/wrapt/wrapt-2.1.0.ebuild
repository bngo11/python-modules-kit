# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="None https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/86/31/afb4cf08b9892430ec419a3f0f469fb978cb013f4432e0edb9c2cf06f081/wrapt-2.1.0.tar.gz -> wrapt-2.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/wrapt-2.1.0"