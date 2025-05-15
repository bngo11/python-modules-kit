# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support."
HOMEPAGE="None https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/63/cf/2cbbf0e9e73b251b3a05cd24e7c8d38bcd9ffefd994e8950eaf0c37441a8/curl_cffi-0.11.1.tar.gz -> curl_cffi-0.11.1.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.11.1"

src_prepare() {
	default
	sed -i -e 's/tmpdir.name/os.getcwd()/' scripts/build.py || die

	export CC=/usr/bin/gcc-12.3.0
	export CXX=/usr/bin/g++-12.3.0
}

distutils_enable_tests pytest
