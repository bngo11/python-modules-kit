# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Service identity verification for pyOpenSSL & cryptography."
HOMEPAGE="None https://pypi.org/project/service-identity/"
SRC_URI="https://files.pythonhosted.org/packages/61/87/ad52e2c582c0f0e7f0a1b86950494c38d67422dc0f5ed9044a5fb9569a49/service_identity-26.1.0.tar.gz -> service_identity-26.1.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/service_identity-compat )
	dev-python/pyasn1[${PYTHON_USEDEP}]
	dev-python/pyasn1_modules[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/service_identity-26.1.0"