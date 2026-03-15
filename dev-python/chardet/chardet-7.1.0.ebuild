# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Universal character encoding detector"
HOMEPAGE="None https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/0d/84/e72ea5c06e687db591283474b8442ab95665fc6bae7b06043b2a6f0eaf6c/chardet-7.1.0.tar.gz -> chardet-7.1.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/chardet-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/chardet-7.1.0"