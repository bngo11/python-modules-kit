# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python crossword puzzle library"
HOMEPAGE="https://github.com/alexdej/puzpy"
SRC_URI="https://files.pythonhosted.org/packages/5e/e2/8186d481b80bd58127ada1f61da4e6c2af25ee6fe59ae0f709df24492e21/puzpy-0.2.6.tar.gz -> puzpy-0.2.6.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
