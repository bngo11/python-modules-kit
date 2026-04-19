# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Universal character encoding detector"
HOMEPAGE="None https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/19/b6/9df434a8eeba2e6628c465a1dfa31034228ef79b26f76f46278f4ef7e49d/chardet-7.4.3.tar.gz -> chardet-7.4.3.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/chardet-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/chardet-7.4.3"