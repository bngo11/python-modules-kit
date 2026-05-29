# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python parser for the CommonMark Markdown spec"
HOMEPAGE="https://github.com/rtfd/commonmark.py https://pypi.org/project/commonmark/"
SRC_URI="https://files.pythonhosted.org/packages/3e/e4/0800832e530c88a8f80cb9e486879ea74257062dfe03a38c1ad535c2860e/commonmark-0.9.2.tar.gz -> commonmark-0.9.2.tar.gz"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/commonmark-0.9.2"

src_prepare() {
	default
	# Fix file collision with app-text/cmark, see bug #627034
	sed -i -e "s:'cmark\( = commonmark.cmark\:main'\):'cmark.py\1:" setup.py || die
}

pkg_postinst() {
				ewarn "/usr/bin/cmark has been renamed to /usr/bin/cmark.py due file"
				ewarn "collision with app-text/cmark (see bug #627034)"
}
