# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Generate and parse RFC 3339 timestamps"
HOMEPAGE="None https://pypi.org/project/pyRFC3339/"
SRC_URI="https://files.pythonhosted.org/packages/80/7a/0e5227aa1c831fdaf579073a0ebb5ca11fc352a43fce8d2639e3ff87ff74/pyrfc3339-2.1.1.tar.gz -> pyrfc3339-2.1.1.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyRFC3339-2.1.1"