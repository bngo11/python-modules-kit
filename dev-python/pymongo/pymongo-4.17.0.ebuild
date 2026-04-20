# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="PyMongo - the Official MongoDB Python driver"
HOMEPAGE="None https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/ca/64/50be6fbac9c79fe2e4c17401a467da2d8764d82833d83cec325afe5cab32/pymongo-4.17.0.tar.gz -> pymongo-4.17.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pymongo-4.17.0"