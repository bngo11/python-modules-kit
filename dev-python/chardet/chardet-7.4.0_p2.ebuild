# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Universal character encoding detector"
HOMEPAGE="None https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/03/4b/1fe1ade6b4d33abff0224b45a8310775b04308668ad1bdef725af8e3fcaa/chardet-7.4.0.post2.tar.gz -> chardet-7.4.0.post2.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/chardet-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/chardet-7.4.0.post2"