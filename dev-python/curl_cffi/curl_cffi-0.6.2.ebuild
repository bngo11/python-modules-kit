# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="libcurl ffi bindings for Python, with impersonation support"
HOMEPAGE=" https://pypi.org/project/curl-cffi/"
SRC_URI="https://files.pythonhosted.org/packages/0c/48/8c79ea18592590eaf49c051398c911dca43482bee22688516539251dcbb9/curl_cffi-0.6.2.tar.gz -> curl_cffi-0.6.2.tar.gz"

DEPEND=""
IUSE=""
RESTRICT="network-sandbox"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/curl_cffi-0.6.2"

distutils_enable_tests pytest
