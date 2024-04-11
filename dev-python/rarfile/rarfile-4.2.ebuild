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
SRC_URI="https://files.pythonhosted.org/packages/26/3f/3118a797444e7e30e784921c4bfafb6500fb288a0c84cb8c32ed15853c16/rarfile-4.2.tar.gz -> rarfile-4.2.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE="+compressed test"
REQUIRED_USE="test? ( compressed )"

RDEPEND="
	compressed? ( app-arch/unrar )
"

distutils_enable_tests pytest