# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-3.0.1
bytecount-0.6.9
bytes-1.11.1
cc-1.2.61
cfg-if-1.0.4
encoding_rs-0.8.35
find-msvc-tools-0.1.9
gimli-0.32.3
itoa-1.0.18
itoap-1.0.1
jiff-0.2.24
jiff-static-0.2.24
libc-0.2.186
memchr-2.8.0
no-panic-0.1.36
once_cell-1.21.4
portable-atomic-1.13.1
portable-atomic-util-0.2.7
proc-macro2-1.0.106
pyo3-build-config-0.28.3
pyo3-ffi-0.28.3
quote-1.0.45
serde-1.0.228
serde_core-1.0.228
serde_derive-1.0.228
serde_json-1.0.149
shlex-1.3.0
simdutf8-0.1.5
syn-2.0.117
target-lexicon-0.13.5
unicode-ident-1.0.24
unwinding-0.2.8
xxhash-rust-0.8.15
zmij-1.0.21
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="None https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/3.0.1/download -> associative-cache-3.0.1.crate
https://crates.io/api/v1/crates/bytecount/0.6.9/download -> bytecount-0.6.9.crate
https://crates.io/api/v1/crates/bytes/1.11.1/download -> bytes-1.11.1.crate
https://crates.io/api/v1/crates/cc/1.2.61/download -> cc-1.2.61.crate
https://crates.io/api/v1/crates/cfg-if/1.0.4/download -> cfg-if-1.0.4.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.9/download -> find-msvc-tools-0.1.9.crate
https://crates.io/api/v1/crates/gimli/0.32.3/download -> gimli-0.32.3.crate
https://crates.io/api/v1/crates/itoa/1.0.18/download -> itoa-1.0.18.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff/0.2.24/download -> jiff-0.2.24.crate
https://crates.io/api/v1/crates/jiff-static/0.2.24/download -> jiff-static-0.2.24.crate
https://crates.io/api/v1/crates/libc/0.2.186/download -> libc-0.2.186.crate
https://crates.io/api/v1/crates/memchr/2.8.0/download -> memchr-2.8.0.crate
https://crates.io/api/v1/crates/no-panic/0.1.36/download -> no-panic-0.1.36.crate
https://crates.io/api/v1/crates/once_cell/1.21.4/download -> once_cell-1.21.4.crate
https://crates.io/api/v1/crates/portable-atomic/1.13.1/download -> portable-atomic-1.13.1.crate
https://crates.io/api/v1/crates/portable-atomic-util/0.2.7/download -> portable-atomic-util-0.2.7.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.106/download -> proc-macro2-1.0.106.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.28.3/download -> pyo3-build-config-0.28.3.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.28.3/download -> pyo3-ffi-0.28.3.crate
https://crates.io/api/v1/crates/quote/1.0.45/download -> quote-1.0.45.crate
https://crates.io/api/v1/crates/serde/1.0.228/download -> serde-1.0.228.crate
https://crates.io/api/v1/crates/serde_core/1.0.228/download -> serde_core-1.0.228.crate
https://crates.io/api/v1/crates/serde_derive/1.0.228/download -> serde_derive-1.0.228.crate
https://crates.io/api/v1/crates/serde_json/1.0.149/download -> serde_json-1.0.149.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/syn/2.0.117/download -> syn-2.0.117.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.5/download -> target-lexicon-0.13.5.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.24/download -> unicode-ident-1.0.24.crate
https://crates.io/api/v1/crates/unwinding/0.2.8/download -> unwinding-0.2.8.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.15/download -> xxhash-rust-0.8.15.crate
https://crates.io/api/v1/crates/zmij/1.0.21/download -> zmij-1.0.21.crate
https://files.pythonhosted.org/packages/7e/0c/964746fcafbd16f8ff53219ad9f6b412b34f345c75f384ad434ceaadb538/orjson-3.11.9.tar.gz -> orjson-3.11.9.tar.gz
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
S="${WORKDIR}/orjson-3.11.9"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
