# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pexpect/pexpect"
SRC_URI="https://github.com/pexpect/pexpect/tarball/32c3e4ada3c8ceecaab1d14d9cb1ce2d52386d99 -> pexpect-4.9-32c3e4a.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/ptyprocess-0.5.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/pexpect-* "$S" || die
	fi
}