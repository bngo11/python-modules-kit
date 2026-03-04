# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Universal character encoding detector"
HOMEPAGE="None https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/6c/80/4684035f1a2a3096506bc377276a815ccf0be3c3316eab35d589e82d9f3c/chardet-7.0.1.tar.gz -> chardet-7.0.1.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/chardet-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/chardet-7.0.1"