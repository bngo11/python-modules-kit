# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

PYTHON_COMPAT=( python3+ pypy{,3} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

MY_PN="IPy"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Class and tools for handling of IPv4 and IPv6 addresses and networks"
HOMEPAGE="https://github.com/haypo/python-ipy/wiki https://pypi.org/project/IPy/"
SRC_URI="https://files.pythonhosted.org/packages/d1/49/de558c2c8581f5860b9696467fb893c7141501daf00ea14bb01fefd360e1/ipy-1.2.tar.gz -> ipy-1.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""

S="${WORKDIR}/${MY_PN}-${PV}"

python_test() {
	# 1 test fail under pypy, persistent from 0.82a, not a regression.
	cp -r test_doc.py README test "${BUILD_DIR}" || die
	pushd "${BUILD_DIR}" > /dev/null || die
	"${PYTHON}" test/test_IPy.py || die "Tests fail with ${EPYTHON}"
	"${PYTHON}" test_doc.py || die "Doctests fail with ${EPYTHON}"
	popd > /dev/null || die
}

python_install_all() {
	use examples && local EXAMPLES=( example/. )
	distutils-r1_python_install_all
}