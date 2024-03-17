# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Core common functionality of Jupyter projects"
HOMEPAGE="
	https://jupyter.org/
	https://github.com/jupyter/jupyter_core/
	https://pypi.org/project/jupyter-core/
"
SRC_URI="https://files.pythonhosted.org/packages/00/11/b56381fa6c3f4cc5d2cf54a7dbf98ad9aa0b339ef7a601d6053538b079a7/jupyter_core-5.7.2.tar.gz -> jupyter_core-5.7.2.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/platformdirs-2.5[${PYTHON_USEDEP}]
	>=dev-python/traitlets-5.11.2[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		>=dev-python/ipython-4.0.1[${PYTHON_USEDEP}]
		dev-python/pip[${PYTHON_USEDEP}]
	)
"

distutils_enable_sphinx docs \
	dev-python/myst-parser \
	dev-python/pydata-sphinx-theme \
	dev-python/sphinx-autodoc-typehints \
	dev-python/sphinxcontrib-github-alt \
	dev-python/sphinxcontrib-spelling \
	dev-python/traitlets
distutils_enable_tests pytest