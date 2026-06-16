# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Ultra fast JSON encoder and decoder for Python"
HOMEPAGE="None https://pypi.org/project/ujson/"
SRC_URI="https://files.pythonhosted.org/packages/89/7a/c8bb37c8f6f3623d60c33d15d18cd6d6655d0f9c3eb31a9969f76361b199/ujson-5.13.0.tar.gz -> ujson-5.13.0.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/ujson-5.13.0"