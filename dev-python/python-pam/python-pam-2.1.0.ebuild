# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python3 module for PAM authentication"
HOMEPAGE="https://github.com/FirefighterBlu3/python-pam"
SRC_URI="https://files.pythonhosted.org/packages/e1/3f/cdf0b4823505df2534feb21ad6c1f552a6d1584278e6c2337b99b2c12e6a/python_pam-2.1.0.tar.gz -> python_pam-2.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/python_pam-2.1.0"