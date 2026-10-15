# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Passive checker for Python programs"
HOMEPAGE="https://github.com/PyCQA/pyflakes
https://pypi.org/project/pyflakes/
"
SRC_URI="https://files.pythonhosted.org/packages/2c/1b/3ba8bd62723cfe1b651c4e4b89b33767fce7a08bb800491cf1d3dd3a7716/pyflakes-4.0.3.tar.gz -> pyflakes-4.0.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-4.0.3"