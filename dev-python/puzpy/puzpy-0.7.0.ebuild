# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python crossword puzzle library"
HOMEPAGE="https://github.com/alexdej/puzpy"
SRC_URI="https://files.pythonhosted.org/packages/9f/45/d4901543bc78905d9e443e8f340126515105b5e5e69598860aa6f1c25c83/puzpy-0.7.0.tar.gz -> puzpy-0.7.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
