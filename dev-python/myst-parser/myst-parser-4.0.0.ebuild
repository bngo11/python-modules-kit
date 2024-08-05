# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="An extended [CommonMark](https://spec.commonmark.org/) compliant parser,"
HOMEPAGE="None https://pypi.org/project/myst-parser/"
SRC_URI="https://files.pythonhosted.org/packages/85/55/6d1741a1780e5e65038b74bce6689da15f620261c490c3511eb4c12bac4b/myst_parser-4.0.0.tar.gz -> myst_parser-4.0.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/docutils-0.18[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	<dev-python/markdown-it-py-4[${PYTHON_USEDEP}]
	>=dev-python/markdown-it-py-3.0[${PYTHON_USEDEP}]
	<dev-python/mdit-py-plugins-0.5[${PYTHON_USEDEP}]
	>=dev-python/mdit-py-plugins-0.4[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>dev-python/sphinx-7[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/myst_parser-4.0.0"

distutils_enable_tests pytest

src_prepare() {
		default

		# unpin docutils
		sed -i -e '/docutils/s:,<[0-9.]*::' pyproject.toml || die
}
