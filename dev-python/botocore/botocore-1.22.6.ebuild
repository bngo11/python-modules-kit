# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Low-level, data-driven core of boto 3."
HOMEPAGE="https://github.com/boto/botocore"
LICENSE="Apache-2.0"
SLOT="0"
IUSE="doc test"
RESTRICT="!test? ( test )"

SRC_URI="https://files.pythonhosted.org/packages/55/64/2f2cdc1a6d8d08a423558dca27863fe3a1de2da5894f7ee9f98094d1e9e5/botocore-1.22.6.tar.gz"
KEYWORDS="*"

RDEPEND="
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/jmespath[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? (
		dev-python/guzzle_sphinx_theme[${PYTHON_USEDEP}]
		dev-python/sphinx[${PYTHON_USEDEP}]
	)
	test? (
		${RDEPEND}
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/jsonschema[${PYTHON_USEDEP}]
	)
"

PATCHES=( "${FILESDIR}/${PN}-1.15.35-tests-pass-all-env-vars-to-cmd-runner.patch" )

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	PYTHONPATH="${BUILD_DIR}/lib" nosetests -v tests/unit || die "unit tests failed under ${EPYTHON}"
	PYTHONPATH="${BUILD_DIR}/lib" nosetests -v tests/functional || die "functional tests failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/build/html/. )

	distutils-r1_python_install_all
}