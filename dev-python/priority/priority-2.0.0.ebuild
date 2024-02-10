# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )
PYTHON_COMPAT=( "${PYTHON_TESTED[@]}" )

inherit distutils-r1

DESCRIPTION="A pure-Python implementation of the HTTP/2 priority tree"
HOMEPAGE="
	https://python-hyper.org/projects/priority/en/latest/
	https://github.com/python-hyper/priority/
	https://pypi.org/project/priority/
"
SRC_URI="https://files.pythonhosted.org/packages/f5/3c/eb7c35f4dcede96fca1842dac5f4f5d15511aa4b52f3a961219e68ae9204/priority-2.0.0.tar.gz -> priority-2.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="
	test? (
		$(python_gen_cond_dep '
			>=dev-python/hypothesis-3.4.2[${PYTHON_USEDEP}]
		' "${PYTHON_TESTED[@]}")
	)
"

distutils_enable_tests pytest

python_test() {
	if ! has "${EPYTHON}" "${PYTHON_TESTED[@]/_/.}"; then
		einfo "Skipping tests on ${EPYTHON} (xfail)"
		return
	fi

	epytest
}