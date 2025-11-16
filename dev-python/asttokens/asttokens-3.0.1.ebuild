# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Annotate Python AST trees with source text and token information"
HOMEPAGE="
	https://github.com/gristlabs/asttokens/
	https://pypi.org/project/asttokens/"
SRC_URI="https://files.pythonhosted.org/packages/be/a5/8e3f9b6771b0b408517c82d97aed8f2036509bc247d46114925e32fe33f0/asttokens-3.0.1.tar.gz -> asttokens-3.0.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
BDEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	test? (
		dev-python/astroid[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest

export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}

python_test() {
	local deselect=()
	[[ ${EPYTHON} == python3.8 ]] && deselect+=(
		tests/test_astroid.py::TestAstroid::test_slices
	)

	epytest ${deselect[@]/#/--deselect }
}