# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support."
HOMEPAGE="None https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/7d/c0/18e408334c480f2cacca02feec8cd01dba9e3f1637cd03fd21b033c2bfa3/curl_cffi-0.10.0.tar.gz -> curl_cffi-0.10.0.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.10.0"

src_prepare() {
	default
	sed -i -e 's/tmpdir.name/os.getcwd()/' scripts/build.py || die

	export CC=/usr/bin/gcc-12.3.0
	export CXX=/usr/bin/g++-12.3.0
}

distutils_enable_tests pytest
