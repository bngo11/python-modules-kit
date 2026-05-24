# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="None https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/2d/9f/06263fcd8ad6c405f05a3905fd7a84dd3176eb5ad46e44bccc0cd16348bb/wrapt-2.2.1.tar.gz -> wrapt-2.2.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/wrapt-2.2.1"