# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="HTTP library for human beings"
HOMEPAGE="https://requests.readthedocs.io/en/master/"
SRC_URI="https://files.pythonhosted.org/packages/24/36/7180e7f077c38108945dbbdf60fe04db681c3feb6e96419f8c6dc8723741/requests-2.34.1.tar.gz -> requests-2.34.1.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/requests-compat )
	>=dev-python/certifi-2017.4.17[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/idna[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/charset_normalizer[${PYTHON_USEDEP}]' -3)
	socks5? ( >=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}] >=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}] )"
IUSE="+ssl python_targets_python2_7 socks5"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/requests-2.34.1"

# FL-7939, FL-10662: relax deps for idna, charset_normalizer: requests sets "cautionary upper masks" which can break:
src_prepare() {
	sed -i -e 's/idna.*/idna/' -e 's/charset_normalizer.*/charset_normalizer/' setup.cfg || die
	sed -i -e 's/"idna.*$/"idna",/' -e 's/"charset_normalizer.*$/"charset_normalizer",/' setup.py || die
	distutils-r1_src_prepare
}
