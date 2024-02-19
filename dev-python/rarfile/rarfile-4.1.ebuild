# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Module for RAR archive reading"
HOMEPAGE="
	https://github.com/markokr/rarfile/
	https://pypi.org/project/rarfile/
"
SRC_URI="https://files.pythonhosted.org/packages/d7/ee/b3f1e882c4fcfaf3a33bb12d5ef77d7f1b92474628d2aedcab231a21cfb4/rarfile-4.1.tar.gz -> rarfile-4.1.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE="+compressed test"
REQUIRED_USE="test? ( compressed )"

RDEPEND="
	compressed? ( app-arch/unrar )
"

distutils_enable_tests pytest