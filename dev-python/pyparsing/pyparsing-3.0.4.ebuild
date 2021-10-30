# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python parsing module"
HOMEPAGE="https://github.com/pyparsing/pyparsing/ https://pypi.org/project/pyparsing/"
SRC_URI="https://files.pythonhosted.org/packages/bf/6f/509e501ff67a335186c8adcdc3ee62195919731b22796b0690658a76bb6f/pyparsing-3.0.4.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyparsing-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyparsing-3.0.4"