# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-3.0.1
bytecount-0.6.9
cc-1.6.0
find-msvc-tools-0.1.14
gimli-0.34.0
itoap-1.0.1
jiff-core-0.1.1
libc-0.2.190
no-panic-0.1.37
once_cell-1.21.4
proc-macro2-1.0.107
pyo3-build-config-0.29.3
pyo3-ffi-0.29.3
quote-1.0.47
shlex-2.0.1
simdutf8-0.1.5
syn-3.0.6
target-lexicon-0.13.5
unicode-ident-1.0.26
unwinding-0.2.10
xxhash-rust-0.8.19
zmij-1.0.23
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="None https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/3.0.1/download -> associative-cache-3.0.1.crate
https://crates.io/api/v1/crates/bytecount/0.6.9/download -> bytecount-0.6.9.crate
https://crates.io/api/v1/crates/cc/1.6.0/download -> cc-1.6.0.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.14/download -> find-msvc-tools-0.1.14.crate
https://crates.io/api/v1/crates/gimli/0.34.0/download -> gimli-0.34.0.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff-core/0.1.1/download -> jiff-core-0.1.1.crate
https://crates.io/api/v1/crates/libc/0.2.190/download -> libc-0.2.190.crate
https://crates.io/api/v1/crates/no-panic/0.1.37/download -> no-panic-0.1.37.crate
https://crates.io/api/v1/crates/once_cell/1.21.4/download -> once_cell-1.21.4.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.107/download -> proc-macro2-1.0.107.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.29.3/download -> pyo3-build-config-0.29.3.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.29.3/download -> pyo3-ffi-0.29.3.crate
https://crates.io/api/v1/crates/quote/1.0.47/download -> quote-1.0.47.crate
https://crates.io/api/v1/crates/shlex/2.0.1/download -> shlex-2.0.1.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/syn/3.0.6/download -> syn-3.0.6.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.5/download -> target-lexicon-0.13.5.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.26/download -> unicode-ident-1.0.26.crate
https://crates.io/api/v1/crates/unwinding/0.2.10/download -> unwinding-0.2.10.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.19/download -> xxhash-rust-0.8.19.crate
https://crates.io/api/v1/crates/zmij/1.0.23/download -> zmij-1.0.23.crate
https://files.pythonhosted.org/packages/f2/72/380b97dc45bd162d23afe5194721ef678d9eac7cfaa549fe2873f7f0a518/orjson-3.13.0.tar.gz -> orjson-3.13.0.tar.gz
$(cargo_crate_uris ${CRATES})"

DEPEND=""
BDEPEND="
	>=virtual/rust-1.72
	test? (
			dev-python/arrow[${PYTHON_USEDEP}]
			dev-python/psutil[${PYTHON_USEDEP}]
			dev-python/pytz[${PYTHON_USEDEP}]
			$(python_gen_cond_dep 'dev-python/numpy[${PYTHON_USEDEP}]' 'python3*')
	)"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0 MIT"
KEYWORDS="*"
S="${WORKDIR}/orjson-3.13.0"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
