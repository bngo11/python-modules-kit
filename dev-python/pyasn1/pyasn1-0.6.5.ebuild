# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="ASN.1 library for Python"
HOMEPAGE="None https://pypi.org/project/pyasn1/"
SRC_URI="https://files.pythonhosted.org/packages/88/7e/3c0da41061a2021cac7cd524fd57092adbe5b515e8bf9005702e366802e2/pyasn1-0.6.5.tar.gz -> pyasn1-0.6.5.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )"
IUSE="doc"
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"
S="${WORKDIR}/pyasn1-0.6.5"

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
