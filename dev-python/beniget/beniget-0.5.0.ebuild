# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extract semantic information about static Python code"
HOMEPAGE="https://github.com/serge-sans-paille/beniget/ https://pypi.org/project/beniget/"
SRC_URI="https://files.pythonhosted.org/packages/31/a9/cf7c2317da1f5034fdebe84555e14a474b3297ef2d03ad148ff02fef2e3a/beniget-0.5.0.tar.gz -> beniget-0.5.0.tar.gz"

DEPEND=""
RDEPEND="dev-python/gast[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/beniget-0.5.0"