# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Let your Python tests travel through time"
HOMEPAGE="https://github.com/spulec/freezegun"
SRC_URI="https://files.pythonhosted.org/packages/30/18/7ab1c3aeb076987929716cec226a7e64c67dc83f0bdf65eae64392b1895c/freezegun-1.2.0.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>dev-python/python-dateutil-2.0[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		$(python_gen_impl_dep sqlite)
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

python_prepare_all() {
	sed -r \
		-e 's:(python-dateutil)>=2.0:\1:' \
		-e "s:'(python-dateutil)>=[0-9.]+,.+':'\1':" \
		-i setup.py

	distutils-r1_python_prepare_all
}

python_prepare() {
	# optional and only works with python3
	if ! python_is_python3; then
		rm freezegun/_async*.py || die
	fi
}