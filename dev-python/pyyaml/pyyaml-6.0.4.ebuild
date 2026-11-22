# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="YAML parser and emitter for Python"
HOMEPAGE="https://pyyaml.org/wiki/PyYAML
https://pypi.org/project/PyYAML/
https://github.com/yaml/pyyaml
"
SRC_URI="https://files.pythonhosted.org/packages/76/b8/c0b780928e2fb1c87e9e375818c6f121da2398b071012d1747be300b83f4/pyyaml-6.0.4.tar.gz -> pyyaml-6.0.4.tar.gz"

DEPEND="
	libyaml? ( dev-libs/libyaml )
	libyaml? ( dev-python/cython[${PYTHON_USEDEP}] )"
RDEPEND="
	python_targets_python2_7? ( dev-python/pyyaml-compat )
	libyaml? ( dev-libs/libyaml )
	libyaml? ( dev-python/cython[${PYTHON_USEDEP}] )"
IUSE="+libyaml examples python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyyaml-${PV}"

python_install_all() {
	distutils-r1_python_install_all
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}
	fi
}
