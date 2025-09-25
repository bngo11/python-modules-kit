# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="YAML parser and emitter for Python"
HOMEPAGE="https://pyyaml.org/wiki/PyYAML
https://pypi.org/project/PyYAML/
https://github.com/yaml/pyyaml
"
SRC_URI="https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz -> pyyaml-6.0.3.tar.gz"

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
