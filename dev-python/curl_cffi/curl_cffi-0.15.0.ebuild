# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support."
HOMEPAGE="None https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/48/5b/89fcfebd3e5e85134147ac99e9f2b2271165fd4d71984fc65da5f17819b7/curl_cffi-0.15.0.tar.gz -> curl_cffi-0.15.0.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.15.0"

src_prepare() {
	default
	sed -i -e 's/tmpdir.name/os.getcwd()/' scripts/build.py || die
}

distutils_enable_tests pytest
