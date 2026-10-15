# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="None https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/04/22/89e2f3bdae5cb34e0cab0cd86d7172dbf418de4b46c9b17b9c7a560dfa44/wrapt-2.5.1.tar.gz -> wrapt-2.5.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/wrapt-2.5.1"