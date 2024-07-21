# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Safely evaluate AST nodes without side effects"
HOMEPAGE="https://github.com/alexmojaki/pure_eval"
SRC_URI="https://files.pythonhosted.org/packages/cd/05/0a34433a064256a578f1783a10da6df098ceaa4a57bbeaa96a6c0352786b/pure_eval-0.2.3.tar.gz -> pure_eval-0.2.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/wheel[${PYTHON_USEDEP}]"

distutils_enable_tests pytest