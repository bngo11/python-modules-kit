# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Access the libmagic file type identification library"
HOMEPAGE="
	https://github.com/ahupp/python-magic/
	https://pypi.org/project/python-magic/
"
SRC_URI="https://files.pythonhosted.org/packages/da/db/0b3e28ac047452d079d375ec6798bf76a036a08182dbb39ed38116a49130/python-magic-0.4.27.tar.gz -> python-magic-0.4.27.tar.gz"

LICENSE="BSD-2 MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	sys-apps/file[-python]
"
BDEPEND="
	test? (
		sys-apps/file
	)
"

distutils_enable_tests unittest

python_test() {
	local -x LC_ALL=en_US.UTF-8
	eunittest -p "*_test.py"
}