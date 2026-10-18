# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Universal character encoding detector"
HOMEPAGE="None https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/47/92/3d893ac5d338b9a9af34c5b517d77492dcea8a10254254eead4215a96f3f/chardet-7.7.0.tar.gz -> chardet-7.7.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/chardet-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/chardet-7.7.0"