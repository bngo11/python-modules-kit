# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support."
HOMEPAGE="None https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/d8/b6/81ea20376e1440a2bcb0f0574c158bccb0948621e437f5634b6fc210d2ba/curl_cffi-0.7.4.tar.gz -> curl_cffi-0.7.4.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.7.4"

src_prepare() {
	default
	sed -i -e 's/tmpdir.name/os.getcwd()/' scripts/build.py || die
}

distutils_enable_tests pytest
