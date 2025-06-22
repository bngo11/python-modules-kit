# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Passive checker for Python programs"
HOMEPAGE="https://github.com/PyCQA/pyflakes
https://pypi.org/project/pyflakes/
"
SRC_URI="https://files.pythonhosted.org/packages/45/dc/fd034dc20b4b264b3d015808458391acbf9df40b1e54750ef175d39180b1/pyflakes-3.4.0.tar.gz -> pyflakes-3.4.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-3.4.0"