# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="None https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/f7/37/ae31f40bec90de2f88d9597d0b5281e23ffe85b893a47ca5d9c05c63a4f6/wrapt-2.1.1.tar.gz -> wrapt-2.1.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/wrapt-2.1.1"