# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Passive checker for Python programs"
HOMEPAGE="https://github.com/PyCQA/pyflakes
https://pypi.org/project/pyflakes/
"
SRC_URI="https://files.pythonhosted.org/packages/9b/43/f4566b992ab97abd18426aeba516a83c7a833230614a2c3f4d3e9d8ff0f0/pyflakes-4.1.0.tar.gz -> pyflakes-4.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-4.1.0"