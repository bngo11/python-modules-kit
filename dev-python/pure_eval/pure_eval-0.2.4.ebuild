# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Safely evaluate AST nodes without side effects"
HOMEPAGE="https://github.com/alexmojaki/pure_eval"
SRC_URI="https://files.pythonhosted.org/packages/da/9f/abfd2959e9261dd5217ca8551d4de211ca6ab26fe9b72cf44731ff6c4442/pure_eval-0.2.4.tar.gz -> pure_eval-0.2.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/wheel[${PYTHON_USEDEP}]"

distutils_enable_tests pytest