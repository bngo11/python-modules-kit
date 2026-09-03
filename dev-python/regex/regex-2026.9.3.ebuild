# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="None https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/19/c1/6b30b775c7bcc6cf6506a4d4741c2123e8d99cd50f3fe8cbd731f5fef526/regex-2026.9.3.tar.gz -> regex-2026.9.3.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/regex-2026.9.3"