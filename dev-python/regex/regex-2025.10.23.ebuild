# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="None https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/f8/c8/1d2160d36b11fbe0a61acb7c3c81ab032d9ec8ad888ac9e0a61b85ab99dd/regex-2025.10.23.tar.gz -> regex-2025.10.23.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/regex-2025.10.23"