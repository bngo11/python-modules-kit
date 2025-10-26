# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-2.0.0
bytecount-0.6.9
bytes-1.10.1
cc-1.2.41
cfg-if-1.0.4
crunchy-0.2.4
encoding_rs-0.8.35
find-msvc-tools-0.1.4
gimli-0.32.3
half-2.7.1
itoa-1.0.15
itoap-1.0.1
jiff-0.2.15
jiff-static-0.2.15
libc-0.2.177
memchr-2.7.6
once_cell-1.21.3
portable-atomic-1.11.1
portable-atomic-util-0.2.4
proc-macro2-1.0.103
pyo3-build-config-0.27.1
pyo3-ffi-0.27.1
quote-1.0.41
ryu-1.0.20
serde-1.0.228
serde_core-1.0.228
serde_derive-1.0.228
serde_json-1.0.145
shlex-1.3.0
simdutf8-0.1.5
smallvec-1.15.1
syn-2.0.108
target-lexicon-0.13.3
unicode-ident-1.0.20
unwinding-0.2.8
uuid-1.18.1
version_check-0.9.5
xxhash-rust-0.8.15
zerocopy-0.8.27
zerocopy-derive-0.8.27
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="None https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/2.0.0/download -> associative-cache-2.0.0.crate
https://crates.io/api/v1/crates/bytecount/0.6.9/download -> bytecount-0.6.9.crate
https://crates.io/api/v1/crates/bytes/1.10.1/download -> bytes-1.10.1.crate
https://crates.io/api/v1/crates/cc/1.2.41/download -> cc-1.2.41.crate
https://crates.io/api/v1/crates/cfg-if/1.0.4/download -> cfg-if-1.0.4.crate
https://crates.io/api/v1/crates/crunchy/0.2.4/download -> crunchy-0.2.4.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.4/download -> find-msvc-tools-0.1.4.crate
https://crates.io/api/v1/crates/gimli/0.32.3/download -> gimli-0.32.3.crate
https://crates.io/api/v1/crates/half/2.7.1/download -> half-2.7.1.crate
https://crates.io/api/v1/crates/itoa/1.0.15/download -> itoa-1.0.15.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff/0.2.15/download -> jiff-0.2.15.crate
https://crates.io/api/v1/crates/jiff-static/0.2.15/download -> jiff-static-0.2.15.crate
https://crates.io/api/v1/crates/libc/0.2.177/download -> libc-0.2.177.crate
https://crates.io/api/v1/crates/memchr/2.7.6/download -> memchr-2.7.6.crate
https://crates.io/api/v1/crates/once_cell/1.21.3/download -> once_cell-1.21.3.crate
https://crates.io/api/v1/crates/portable-atomic/1.11.1/download -> portable-atomic-1.11.1.crate
https://crates.io/api/v1/crates/portable-atomic-util/0.2.4/download -> portable-atomic-util-0.2.4.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.103/download -> proc-macro2-1.0.103.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.27.1/download -> pyo3-build-config-0.27.1.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.27.1/download -> pyo3-ffi-0.27.1.crate
https://crates.io/api/v1/crates/quote/1.0.41/download -> quote-1.0.41.crate
https://crates.io/api/v1/crates/ryu/1.0.20/download -> ryu-1.0.20.crate
https://crates.io/api/v1/crates/serde/1.0.228/download -> serde-1.0.228.crate
https://crates.io/api/v1/crates/serde_core/1.0.228/download -> serde_core-1.0.228.crate
https://crates.io/api/v1/crates/serde_derive/1.0.228/download -> serde_derive-1.0.228.crate
https://crates.io/api/v1/crates/serde_json/1.0.145/download -> serde_json-1.0.145.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/smallvec/1.15.1/download -> smallvec-1.15.1.crate
https://crates.io/api/v1/crates/syn/2.0.108/download -> syn-2.0.108.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.3/download -> target-lexicon-0.13.3.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.20/download -> unicode-ident-1.0.20.crate
https://crates.io/api/v1/crates/unwinding/0.2.8/download -> unwinding-0.2.8.crate
https://crates.io/api/v1/crates/uuid/1.18.1/download -> uuid-1.18.1.crate
https://crates.io/api/v1/crates/version_check/0.9.5/download -> version_check-0.9.5.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.15/download -> xxhash-rust-0.8.15.crate
https://crates.io/api/v1/crates/zerocopy/0.8.27/download -> zerocopy-0.8.27.crate
https://crates.io/api/v1/crates/zerocopy-derive/0.8.27/download -> zerocopy-derive-0.8.27.crate
https://files.pythonhosted.org/packages/c6/fe/ed708782d6709cc60eb4c2d8a361a440661f74134675c72990f2c48c785f/orjson-3.11.4.tar.gz -> orjson-3.11.4.tar.gz
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
S="${WORKDIR}/orjson-3.11.4"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
