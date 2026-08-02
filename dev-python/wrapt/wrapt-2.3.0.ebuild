# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="None https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/2b/b0/c1f5a970721f06b85c0cd5142e0ff8fe067708abd779b0c4f4be7d61d09f/wrapt-2.3.0.tar.gz -> wrapt-2.3.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/wrapt-2.3.0"