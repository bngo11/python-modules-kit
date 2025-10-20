# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Module for decorators, wrappers and monkey patching."
HOMEPAGE="https://github.com/GrahamDumpleton/wrapt https://pypi.org/project/wrapt/"
SRC_URI="https://files.pythonhosted.org/packages/49/19/5e5bcd855d808892fe02d49219f97a50f64cd6d8313d75df3494ee97b1a3/wrapt-2.0.0.tar.gz -> wrapt-2.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/wrapt-2.0.0"