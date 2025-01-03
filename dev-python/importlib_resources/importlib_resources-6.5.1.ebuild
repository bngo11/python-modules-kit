# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Read resources from Python packages"
HOMEPAGE="None https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/d0/06/e6d5465162bbb9addbc350304156a2324b06adf949e663b16a295241285f/importlib_resources-6.5.1.tar.gz -> importlib_resources-6.5.1.tar.gz"

DEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.1[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_resources-compat )
	$(python_gen_cond_dep 'dev-python/zipp[${PYTHON_USEDEP}]' -3 pypy3)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/importlib_resources-6.5.1"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
