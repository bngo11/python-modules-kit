# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A simple framework for building complex web applications."
HOMEPAGE="None https://pypi.org/project/Flask/"
SRC_URI="https://files.pythonhosted.org/packages/26/00/35d85dcce6c57fdc871f3867d465d780f302a175ea360f62533f12b27e2b/flask-3.1.3.tar.gz -> flask-3.1.3.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/werkzeug-3.0.0[${PYTHON_USEDEP}]
	>dev-python/jinja2-3.1.2[${PYTHON_USEDEP}]
	>=dev-python/itsdangerous-2.1.2[${PYTHON_USEDEP}]
	>=dev-python/click-8.1.3[${PYTHON_USEDEP}]
	>=dev-python/blinker-1.6.2[${PYTHON_USEDEP}]
	>=dev-python/asgiref-3.2[${PYTHON_USEDEP}]
	dev-python/python-dotenv[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/importlib-metadata-3.6.0[${PYTHON_USEDEP}]' python3_9)"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/flask-3.1.3"