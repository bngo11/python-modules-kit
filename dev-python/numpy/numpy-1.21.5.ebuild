# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
PYTHON_REQ_USE="threads(+)"

FORTRAN_NEEDED=lapack

DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1 flag-o-matic fortran-2 multiprocessing toolchain-funcs

DESCRIPTION="Fast array and numerical python library"
HOMEPAGE="https://numpy.org/"
SRC_URI="https://files.pythonhosted.org/packages/c2/a8/a924a09492bdfee8c2ec3094d0a13f2799800b4fdc9c890738aeeb12c72e/numpy-1.21.5.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="lapack"

RDEPEND="
	lapack? (
		virtual/cblas
		virtual/lapack
	)
"
BDEPEND="
	${RDEPEND}
	app-arch/unzip
	>=dev-python/cython-0.29.24[${PYTHON_USEDEP}]
	lapack? ( virtual/pkgconfig )
"

PATCHES=(
	"${FILESDIR}"/${PN}-1.21.0-no-hardcode-blasv2.patch
)

python_prepare_all() {
	if use lapack; then
		local incdir="${EPREFIX}"/usr/include
		local libdir="${EPREFIX}"/usr/$(get_libdir)
		cat >> site.cfg <<-EOF || die
			[blas]
			include_dirs = ${incdir}
			library_dirs = ${libdir}
			blas_libs = cblas,blas
			[lapack]
			library_dirs = ${libdir}
			lapack_libs = lapack
		EOF
	else
		export {ATLAS,PTATLAS,BLAS,LAPACK,MKL}=None
	fi

	export CC="$(tc-getCC) ${CFLAGS}"

	append-flags -fno-strict-aliasing

	# See progress in http://projects.scipy.org/scipy/numpy/ticket/573
	# with the subtle difference that we don't want to break Darwin where
	# -shared is not a valid linker argument
	if [[ ${CHOST} != *-darwin* ]]; then
		append-ldflags -shared
	fi

	# only one fortran to link with:
	# linking with cblas and lapack library will force
	# autodetecting and linking to all available fortran compilers
	append-fflags -fPIC
	if use lapack; then
		NUMPY_FCONFIG="config_fc --noopt --noarch"
		# workaround bug 335908
		[[ $(tc-getFC) == *gfortran* ]] && NUMPY_FCONFIG+=" --fcompiler=gnu95"
	fi

	# don't version f2py, we will handle it.
	sed -i -e '/f2py_exe/s: + os\.path.*$::' numpy/f2py/setup.py || die

	# disable fuzzed tests
	find numpy/*/tests -name '*.py' -exec sed -i \
		-e 's:def \(.*_fuzz\):def _\1:' {} + || die
	# very memory- and disk-hungry
	sed -i -e 's:test_large_zip:_&:' numpy/lib/tests/test_io.py || die

	distutils-r1_python_prepare_all
}

python_compile() {
	export MAKEOPTS=-j1 #660754

	distutils-r1_python_compile ${NUMPY_FCONFIG}
}

python_test() {
	distutils_install_for_testing --single-version-externally-managed \
		--record "${TMPDIR}/record.txt" ${NUMPY_FCONFIG}

	cd "${TMPDIR}" || die

	"${EPYTHON}" -c "
import numpy, sys
r = numpy.test(label='full', verbose=3)
sys.exit(0 if r else 1)" || die "Tests fail with ${EPYTHON}"
}

python_install() {
	# https://github.com/numpy/numpy/issues/16005
	local mydistutilsargs=( build_src )
	distutils-r1_python_install ${NUMPY_FCONFIG}
	python_optimize
}

python_install_all() {
	local DOCS=( LICENSE.txt README.md THANKS.txt )

	distutils-r1_python_install_all
}