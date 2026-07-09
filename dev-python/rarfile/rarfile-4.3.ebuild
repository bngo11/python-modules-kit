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
SRC_URI="https://files.pythonhosted.org/packages/c6/80/442df102d81a10d31ec2cf73d6f411f5575e3bb7adc0aaa45cbe693a37b6/rarfile-4.3.tar.gz -> rarfile-4.3.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE="+compressed test"
REQUIRED_USE="test? ( compressed )"

RDEPEND="
	compressed? ( app-arch/unrar )
"

distutils_enable_tests pytest