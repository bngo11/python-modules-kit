# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python CFFI bindings to the Brotli library"
HOMEPAGE="https://github.com/python-hyper/brotlicffi https://pypi.org/project/brotlicffi/"
SRC_URI="https://files.pythonhosted.org/packages/92/8b/10c6c4bac3a7d292707c9b879b8b3bb7f6c8ca5db5e6dff559bd9d59d45e/brotlicffi-1.2.1.0.tar.gz -> brotlicffi-1.2.1.0.tar.gz"

DEPEND=""
RDEPEND="
	>=app-arch/brotli-1.0.9"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/brotlicffi-1.2.1.0"

src_configure() {
	export USE_SHARED_BROTLI=1
}
