# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="An extended [CommonMark](https://spec.commonmark.org/) compliant parser,"
HOMEPAGE="None https://pypi.org/project/myst-parser/"
SRC_URI="https://files.pythonhosted.org/packages/21/dc/603751677fff302f34396e206b610f556a59d7fe58b9a2145f54e96b48e8/myst_parser-5.1.0.tar.gz -> myst_parser-5.1.0.tar.gz"

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
S="${WORKDIR}/myst_parser-5.1.0"

distutils_enable_tests pytest

src_prepare() {
		default

		# unpin docutils
		sed -i -e '/docutils/s:,<[0-9.]*::' pyproject.toml || die
}
