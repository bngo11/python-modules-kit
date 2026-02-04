# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-2.0.0
bytecount-0.6.9
bytes-1.11.0
cc-1.2.55
cfg-if-1.0.4
crunchy-0.2.4
encoding_rs-0.8.35
find-msvc-tools-0.1.9
gimli-0.32.3
half-2.7.1
itoa-1.0.17
itoap-1.0.1
jiff-0.2.18
jiff-static-0.2.18
libc-0.2.180
memchr-2.7.6
no-panic-0.1.36
once_cell-1.21.3
portable-atomic-1.13.1
portable-atomic-util-0.2.5
proc-macro2-1.0.106
pyo3-build-config-0.28.0
pyo3-ffi-0.28.0
quote-1.0.44
serde-1.0.228
serde_core-1.0.228
serde_derive-1.0.228
serde_json-1.0.149
shlex-1.3.0
simdutf8-0.1.5
smallvec-1.15.1
syn-2.0.114
target-lexicon-0.13.4
unicode-ident-1.0.22
unwinding-0.2.8
uuid-1.20.0
version_check-0.9.5
xxhash-rust-0.8.15
zerocopy-0.8.37
zerocopy-derive-0.8.37
zmij-1.0.19
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="None https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/2.0.0/download -> associative-cache-2.0.0.crate
https://crates.io/api/v1/crates/bytecount/0.6.9/download -> bytecount-0.6.9.crate
https://crates.io/api/v1/crates/bytes/1.11.0/download -> bytes-1.11.0.crate
https://crates.io/api/v1/crates/cc/1.2.55/download -> cc-1.2.55.crate
https://crates.io/api/v1/crates/cfg-if/1.0.4/download -> cfg-if-1.0.4.crate
https://crates.io/api/v1/crates/crunchy/0.2.4/download -> crunchy-0.2.4.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.9/download -> find-msvc-tools-0.1.9.crate
https://crates.io/api/v1/crates/gimli/0.32.3/download -> gimli-0.32.3.crate
https://crates.io/api/v1/crates/half/2.7.1/download -> half-2.7.1.crate
https://crates.io/api/v1/crates/itoa/1.0.17/download -> itoa-1.0.17.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff/0.2.18/download -> jiff-0.2.18.crate
https://crates.io/api/v1/crates/jiff-static/0.2.18/download -> jiff-static-0.2.18.crate
https://crates.io/api/v1/crates/libc/0.2.180/download -> libc-0.2.180.crate
https://crates.io/api/v1/crates/memchr/2.7.6/download -> memchr-2.7.6.crate
https://crates.io/api/v1/crates/no-panic/0.1.36/download -> no-panic-0.1.36.crate
https://crates.io/api/v1/crates/once_cell/1.21.3/download -> once_cell-1.21.3.crate
https://crates.io/api/v1/crates/portable-atomic/1.13.1/download -> portable-atomic-1.13.1.crate
https://crates.io/api/v1/crates/portable-atomic-util/0.2.5/download -> portable-atomic-util-0.2.5.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.106/download -> proc-macro2-1.0.106.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.28.0/download -> pyo3-build-config-0.28.0.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.28.0/download -> pyo3-ffi-0.28.0.crate
https://crates.io/api/v1/crates/quote/1.0.44/download -> quote-1.0.44.crate
https://crates.io/api/v1/crates/serde/1.0.228/download -> serde-1.0.228.crate
https://crates.io/api/v1/crates/serde_core/1.0.228/download -> serde_core-1.0.228.crate
https://crates.io/api/v1/crates/serde_derive/1.0.228/download -> serde_derive-1.0.228.crate
https://crates.io/api/v1/crates/serde_json/1.0.149/download -> serde_json-1.0.149.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/smallvec/1.15.1/download -> smallvec-1.15.1.crate
https://crates.io/api/v1/crates/syn/2.0.114/download -> syn-2.0.114.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.4/download -> target-lexicon-0.13.4.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.22/download -> unicode-ident-1.0.22.crate
https://crates.io/api/v1/crates/unwinding/0.2.8/download -> unwinding-0.2.8.crate
https://crates.io/api/v1/crates/uuid/1.20.0/download -> uuid-1.20.0.crate
https://crates.io/api/v1/crates/version_check/0.9.5/download -> version_check-0.9.5.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.15/download -> xxhash-rust-0.8.15.crate
https://crates.io/api/v1/crates/zerocopy/0.8.37/download -> zerocopy-0.8.37.crate
https://crates.io/api/v1/crates/zerocopy-derive/0.8.37/download -> zerocopy-derive-0.8.37.crate
https://crates.io/api/v1/crates/zmij/1.0.19/download -> zmij-1.0.19.crate
https://files.pythonhosted.org/packages/53/45/b268004f745ede84e5798b48ee12b05129d19235d0e15267aa57dcdb400b/orjson-3.11.7.tar.gz -> orjson-3.11.7.tar.gz
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
S="${WORKDIR}/orjson-3.11.7"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
