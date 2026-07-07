# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/bd/2a/23f34ec9d04624958e137efdc394888716353190e75f25dd22c7a2c7a8aa/charset_normalizer-3.4.9.tar.gz -> charset_normalizer-3.4.9.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/charset_normalizer-3.4.9"

src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
