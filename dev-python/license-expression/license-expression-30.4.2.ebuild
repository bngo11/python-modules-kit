# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="license-expression is a comprehensive utility library to parse, compare, simplify and normalize license expressions (such as SPDX license expressions) using boolean logic."
HOMEPAGE="https://github.com/aboutcode-org/license-expression https://pypi.org/project/license-expression/"
SRC_URI="https://files.pythonhosted.org/packages/b5/22/7615bbaa9a75c6efc85063fa0ca450b254dd23d4047a0806974ff07810ac/license_expression-30.4.2.tar.gz -> license_expression-30.4.2.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/boolean-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/license_expression-30.4.2"