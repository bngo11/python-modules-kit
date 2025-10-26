# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python crossword puzzle library"
HOMEPAGE="https://github.com/alexdej/puzpy"
SRC_URI="https://files.pythonhosted.org/packages/06/30/b57c5519e2ff3ec26606922158cf1dc2aafe992292a4bae0fb1756dffa27/puzpy-0.3.2.tar.gz -> puzpy-0.3.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
