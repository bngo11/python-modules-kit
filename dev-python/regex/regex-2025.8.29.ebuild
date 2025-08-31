# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="None https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/e4/10/2d333227cf5198eb3252f2d50c8ade5cd2015f11c22403f0c9e3d529e81a/regex-2025.8.29.tar.gz -> regex-2025.8.29.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/regex-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/regex-2025.8.29"