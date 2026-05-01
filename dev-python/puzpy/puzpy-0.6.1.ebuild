# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python crossword puzzle library"
HOMEPAGE="https://github.com/alexdej/puzpy"
SRC_URI="https://files.pythonhosted.org/packages/45/9f/51f3bb801f8d0146ed6687861bf9323e59cf872b881ae5282c966f6fcd0e/puzpy-0.6.1.tar.gz -> puzpy-0.6.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
