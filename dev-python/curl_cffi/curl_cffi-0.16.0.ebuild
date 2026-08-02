# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support."
HOMEPAGE="None https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/b4/23/d32e113b16dbfb458bea408871ed98dd12f306a366a04215e84537e0af7e/curl_cffi-0.16.0.tar.gz -> curl_cffi-0.16.0.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.16.0"

src_prepare() {
	default
	sed -i -e 's/tmpdir.name/os.getcwd()/' scripts/build.py || die
}

distutils_enable_tests pytest
