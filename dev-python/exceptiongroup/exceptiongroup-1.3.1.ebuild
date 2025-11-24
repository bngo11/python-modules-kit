# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit_scm"
inherit distutils-r1

DESCRIPTION="Backport of PEP 654 (exception groups)"
HOMEPAGE="None https://pypi.org/project/exceptiongroup/"
SRC_URI="https://files.pythonhosted.org/packages/50/79/66800aadf48771f6b62f7eb014e352e5d06856655206165d775e675a02c9/exceptiongroup-1.3.1.tar.gz -> exceptiongroup-1.3.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/exceptiongroup-1.3.1"