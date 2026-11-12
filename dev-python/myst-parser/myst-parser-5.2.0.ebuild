# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="An extended [CommonMark](https://spec.commonmark.org/) compliant parser,"
HOMEPAGE="None https://pypi.org/project/myst-parser/"
SRC_URI="https://files.pythonhosted.org/packages/11/51/82c2dff56e171db778dc68bf8d7902fcc8ea1687b67f716baf1abb94cd6a/myst_parser-5.2.0.tar.gz -> myst_parser-5.2.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/docutils-0.18[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	>=dev-python/markdown-it-py-4.0[${PYTHON_USEDEP}]
	>=dev-python/mdit-py-plugins-0.5[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>dev-python/sphinx-7[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/myst_parser-5.2.0"

distutils_enable_tests pytest

src_prepare() {
		default

		# unpin docutils
		sed -i -e '/docutils/s:,<[0-9.]*::' pyproject.toml || die
}
