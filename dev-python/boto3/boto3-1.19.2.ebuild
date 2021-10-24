# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3+ )

inherit distutils-r1 vcs-snapshot

DESCRIPTION="The AWS SDK for Python"
HOMEPAGE="https://github.com/boto/boto3"
LICENSE="Apache-2.0"
SLOT="0"
IUSE="doc test"
RESTRICT="!test? ( test )"

SRC_URI="https://files.pythonhosted.org/packages/ec/45/d12f9c09b5c4dad8bcb098dfae5e9e1253ed6408efbbd9a3e60bff55b824/boto3-1.19.2.tar.gz"
KEYWORDS="*"

RDEPEND="
	>=dev-python/botocore-1.12.4[${PYTHON_USEDEP}]
	dev-python/jmespath[${PYTHON_USEDEP}]
	dev-python/s3transfer[${PYTHON_USEDEP}]
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
	)
"

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	nosetests -v tests/unit/ tests/functional/ || die "test failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/build/html/. )

	distutils-r1_python_install_all
}