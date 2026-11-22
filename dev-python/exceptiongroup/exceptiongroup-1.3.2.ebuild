# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit_scm"
inherit distutils-r1

DESCRIPTION="Backport of PEP 654 (exception groups)"
HOMEPAGE="None https://pypi.org/project/exceptiongroup/"
SRC_URI="https://files.pythonhosted.org/packages/85/ac/f882fe3234606340c8729372da0fb98c634b97a560c9d375d9afea21496b/exceptiongroup-1.3.2.tar.gz -> exceptiongroup-1.3.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/exceptiongroup-1.3.2"