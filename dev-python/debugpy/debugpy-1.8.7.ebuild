# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1 multiprocessing

DESCRIPTION="An implementation of the Debug Adapter Protocol for Python"
HOMEPAGE="
	https://github.com/microsoft/debugpy/
	https://pypi.org/project/debugpy/
"
SRC_URI="https://files.pythonhosted.org/packages/6d/00/5a8b5dc8f52617c5e41845e26290ebea1ba06377cc08155b6d245c27b386/debugpy-1.8.7.zip -> debugpy-1.8.7.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/pydevd[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		dev-python/psutil[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/pytest-timeout[${PYTHON_USEDEP}]
		dev-python/pytest-xdist[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

python_prepare_all() {
	# Unbundle dev-python/pydevd
	rm -r src/debugpy/_vendored/pydevd || die
	local PATCHES=(
		"${FILESDIR}/${PN}-1.8.0-unbundle-pydevd.patch"
	)

	distutils-r1_python_prepare_all
}

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	local EPYTEST_DESELECT=(
		tests/debugpy/test_gevent.py::test_gevent
		tests/debugpy/test_run.py::test_custom_python_args
		tests/tests/test_timeline.py::test_occurrences
		# TODO: random regressions
		tests/debugpy/test_flask.py::test_flask_breakpoint_multiproc
		tests/debugpy/test_exception.py::test_raise_exception_options
		tests/debugpy/test_exception.py::test_vsc_exception_options_raise_without_except
	)
	local EPYTEST_IGNORE=(
		tests/tests/test_vendoring.py
	)

	case ${EPYTHON} in
		python3.12)
			EPYTEST_DESELECT+=(
				tests/debugpy/test_flask.py
			)
			;;
	esac

	epytest -p timeout -p xdist -n "$(makeopts_jobs)" --dist=worksteal \
		-k "not attach_pid"
}