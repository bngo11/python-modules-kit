# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python3 module for PAM authentication"
HOMEPAGE="https://github.com/FirefighterBlu3/python-pam"
SRC_URI="https://files.pythonhosted.org/packages/86/82/6ec9742f7e9f5f647721baa867f965c43cc40bd6ed83c17a1c4713967065/python_pam-2.1.1.tar.gz -> python_pam-2.1.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/python_pam-2.1.1"