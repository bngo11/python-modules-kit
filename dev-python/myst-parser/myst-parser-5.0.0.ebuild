# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="An extended [CommonMark](https://spec.commonmark.org/) compliant parser,"
HOMEPAGE="None https://pypi.org/project/myst-parser/"
SRC_URI="https://files.pythonhosted.org/packages/33/fa/7b45eef11b7971f0beb29d27b7bfe0d747d063aa29e170d9edd004733c8a/myst_parser-5.0.0.tar.gz -> myst_parser-5.0.0.tar.gz"

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
S="${WORKDIR}/myst_parser-5.0.0"

distutils_enable_tests pytest

src_prepare() {
		default

		# unpin docutils
		sed -i -e '/docutils/s:,<[0-9.]*::' pyproject.toml || die
}
