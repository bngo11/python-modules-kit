# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="An easy safelist-based HTML-sanitizing tool."
HOMEPAGE="https://github.com/mozilla/bleach https://pypi.org/project/bleach/"
SRC_URI="https://files.pythonhosted.org/packages/07/18/3c8523962314be6bf4c8989c79ad9531c825210dd13a8669f6b84336e8bd/bleach-6.3.0.tar.gz -> bleach-6.3.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	dev-python/webencodings[${PYTHON_USEDEP}]
	dev-python/tinycss2[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/bleach-6.3.0"