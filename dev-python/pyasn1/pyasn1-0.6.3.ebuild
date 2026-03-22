# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="ASN.1 library for Python"
HOMEPAGE="None https://pypi.org/project/pyasn1/"
SRC_URI="https://files.pythonhosted.org/packages/5c/5f/6583902b6f79b399c9c40674ac384fd9cd77805f9e6205075f828ef11fb2/pyasn1-0.6.3.tar.gz -> pyasn1-0.6.3.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"
IUSE="doc"
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
S="${WORKDIR}/pyasn1-0.6.3"

python_test() {
	esetup.py test
}

src_compile() {
	if use doc; then
		python_setup
		esetup.py build_sphinx
	fi
	distutils-r1_src_compile
}

src_install() {
		local HTML_DOCS
		use doc && HTML_DOCS=( build/sphinx/html/. )

		distutils-r1_src_install
}
