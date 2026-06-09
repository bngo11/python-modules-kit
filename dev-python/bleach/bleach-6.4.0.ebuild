# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="An easy safelist-based HTML-sanitizing tool."
HOMEPAGE="https://github.com/mozilla/bleach https://pypi.org/project/bleach/"
SRC_URI="https://files.pythonhosted.org/packages/48/3c/e12ac860709702bd5ebeb9b56a4fe334f1001246ee1b8f2b7ee28912df7d/bleach-6.4.0.tar.gz -> bleach-6.4.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	dev-python/webencodings[${PYTHON_USEDEP}]
	dev-python/tinycss2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/bleach-6.4.0"