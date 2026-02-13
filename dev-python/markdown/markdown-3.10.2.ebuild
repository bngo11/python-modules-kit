# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/2b/f4/69fa6ed85ae003c2378ffa8f6d2e3234662abd02c10d216c0ba96081a238/markdown-3.10.2.tar.gz -> markdown-3.10.2.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/markdown-compat )
	$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' -3 pypy3)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/markdown-${PV}"