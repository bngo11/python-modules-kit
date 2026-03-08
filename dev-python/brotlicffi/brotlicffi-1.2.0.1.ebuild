# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python CFFI bindings to the Brotli library"
HOMEPAGE="https://github.com/python-hyper/brotlicffi https://pypi.org/project/brotlicffi/"
SRC_URI="https://files.pythonhosted.org/packages/8a/b6/017dc5f852ed9b8735af77774509271acbf1de02d238377667145fcee01d/brotlicffi-1.2.0.1.tar.gz -> brotlicffi-1.2.0.1.tar.gz"

DEPEND=""
RDEPEND="
	>=app-arch/brotli-1.0.9"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/brotlicffi-1.2.0.1"

src_configure() {
	export USE_SHARED_BROTLI=1
}
