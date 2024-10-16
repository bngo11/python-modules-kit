# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )
inherit distutils-r1

DESCRIPTION="HTTP library for human beings"
HOMEPAGE="https://requests.readthedocs.io/en/master/"
SRC_URI="https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/charset_normalizer[${PYTHON_USEDEP}]
	' -3
	)
	socks5? ( >=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}] >=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}] )"

IUSE="socks5 +ssl"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/requests-2.27.1"

# FL-7939: relax deps for idna
src_prepare() {
	sed -i -e '/^idna/c idna' requests.egg-info/requires.txt || die
	sed -i -e "s/'idna.*$/'idna',/" setup.py || die
	distutils-r1_src_prepare
}
