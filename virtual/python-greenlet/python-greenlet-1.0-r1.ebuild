# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_8+ pypy pypy3 )

inherit python-r1

DESCRIPTION="A virtual for Python greenlet module"
SLOT="0"
KEYWORDS="*"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	$(python_gen_cond_dep 'dev-python/greenlet[${PYTHON_USEDEP}]' 'python*')"
