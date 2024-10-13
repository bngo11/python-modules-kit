# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support."
HOMEPAGE="None https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/21/97/4df615296fcbbeab657eced4d30ee549ca7f9f692f1e967e9ca0a14c13f1/curl_cffi-0.7.3.tar.gz -> curl_cffi-0.7.3.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.7.3"

src_prepare() {
	default
	sed -i -e 's/tmpdir.name/os.getcwd()/' scripts/build.py || die
}

distutils_enable_tests pytest
