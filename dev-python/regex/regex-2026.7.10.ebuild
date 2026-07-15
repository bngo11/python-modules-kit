# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="None https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/7b/37/451aaddbf50922f34d744ad5ca919ae1fcfac112123885d9728f52a484b3/regex-2026.7.10.tar.gz -> regex-2026.7.10.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/regex-2026.7.10"