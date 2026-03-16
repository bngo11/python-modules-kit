# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The Real First Universal Charset Detector"
HOMEPAGE="https://github.com/ousret/charset_normalizer"
SRC_URI="https://files.pythonhosted.org/packages/7b/60/e3bec1881450851b087e301bedc3daa9377a4d45f1c26aa90b0b235e38aa/charset_normalizer-3.4.6.tar.gz -> charset_normalizer-3.4.6.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/charset_normalizer-3.4.6"

src_prepare() {
	sed -i -e '/addopts/d' setup.cfg || die
	distutils-r1_src_prepare
}
