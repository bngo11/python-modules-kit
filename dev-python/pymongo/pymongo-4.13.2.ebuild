# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="PyMongo - the Official MongoDB Python driver"
HOMEPAGE="None https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/4b/5a/d664298bf54762f0c89b8aa2c276868070e06afb853b4a8837de5741e5f9/pymongo-4.13.2.tar.gz -> pymongo-4.13.2.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-4.13.2"