# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/Markdown/"
SRC_URI="https://files.pythonhosted.org/packages/66/bf/a7c9e8cc23c105633b74e3280c2b06d13273da0df389e59395188d440017/Markdown-3.4.2.tar.gz -> Markdown-3.4.2.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/markdown-compat )
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' -3 pypy3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Markdown-3.4.2"