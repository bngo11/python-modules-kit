# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1 toolchain-funcs

DESCRIPTION="PyDev.Debugger (used in PyDev, PyCharm and VSCode Python)"
HOMEPAGE="
	https://github.com/fabioz/PyDev.Debugger/
	https://pypi.org/project/pydevd/
"
SRC_URI="https://files.pythonhosted.org/packages/93/e4/47a0902fb14776109fff206e7dadf8adf47e31699e193851b5a6876a74c6/pydevd-3.1.0.tar.gz -> pydevd-3.1.0.tar.gz"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	sys-devel/gdb
"
BDEPEND="
	test? (
		dev-python/untangle[${PYTHON_USEDEP}]
		dev-python/numpy[${PYTHON_USEDEP}]
		dev-python/psutil[${PYTHON_USEDEP}]
		dev-python/pytest-rerunfailures[${PYTHON_USEDEP}]
	)
"

EPYTEST_XDIST=1
distutils_enable_tests pytest

python_prepare_all() {
	distutils-r1_python_prepare_all

	# Drop -O3 and -flto compiler args
	sed -i \
		-e 's/extra_link_args = extra_compile_args\[\:\]/pass/g' \
		-e '/extra_compile_args/d' \
		setup.py || die

	# Clean up some prebuilt files
	cd pydevd_attach_to_process || die

	# Remove these Windows files
	rm attach_{amd64,x86}.dll || die
	rm run_code_on_dllmain_{amd64,x86}.dll || die
	rm -r windows winappdbg || die

	# Remove these MacOS files
	rm attach_x86_64.dylib || die

	# Remove these prebuilt linux files
	rm attach_linux_{amd64,x86}.so || die

	cd linux_and_mac || die
	rm compile_mac.sh || die
}

src_compile() {
	pushd pydevd_attach_to_process/linux_and_mac || die
	# recompile removed file (extracted from compile_linux.sh)
	$(tc-getBUILD_CXX) ${CXXFLAGS} ${CPPFLAGS} \
		-o "../attach_linux_${ARCH}.so" \
		${LDFLAGS} -nostartfiles attach.cpp -ldl || die
	popd || die

	distutils-r1_src_compile

	# C extensions
	rm -r _pydevd* || die
}

python_test() {
	local EPYTEST_DESELECT=(
		# TODO
		# NB: upstream seems to run tests via runfiles.py but that script
		# is a horror and it seems broken for us anyway
		tests_python/test_debugger.py::test_attach_to_pid_halted
		tests_python/test_debugger.py::test_attach_to_pid_no_threads
		'tests_python/test_debugger.py::test_path_translation[False]'
		tests_python/test_debugger_json.py::test_attach_to_pid
		tests_python/test_debugger_json.py::test_evaluate_exception_trace
		tests_python/test_debugger_json.py::test_gui_event_loop_custom
		tests_python/test_debugger_json.py::test_path_translation_and_source_reference
		tests_python/test_utilities.py::test_tracing_basic
		tests_python/test_utilities.py::test_tracing_other_threads
		# incompatible with xdist
		tests_python/test_utilities.py::test_is_main_thread
	)

	case ${EPYTHON} in
		python3.10)
			EPYTEST_DESELECT+=(
				tests_python/test_debugger.py::test_frame_eval_limitations
			)
			;&
		python3.11)
			EPYTEST_DESELECT+=(
				tests_python/test_debugger.py::test_remote_debugger_threads
			)
			;;
	esac

	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	# this is only used to compare against getpid() to detect that xdist
	# is being used
	local -x PYDEV_MAIN_PID=1
	epytest -p rerunfailures --reruns=5
}

python_install_all() {
	distutils-r1_python_install_all
	# Remove this duplicate that is installed directly to /usr/
	# These files are also correctly installed to the python site-packages dir
	rm -r "${ED}/usr/pydevd_attach_to_process" || die
}