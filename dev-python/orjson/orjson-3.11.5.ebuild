# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-2.0.0
bytecount-0.6.9
bytes-1.11.0
cc-1.2.48
cfg-if-1.0.4
crunchy-0.2.4
encoding_rs-0.8.35
find-msvc-tools-0.1.5
gimli-0.32.3
half-2.7.1
itoa-1.0.15
itoap-1.0.1
jiff-0.2.16
jiff-static-0.2.16
libc-0.2.178
memchr-2.7.6
once_cell-1.21.3
portable-atomic-1.11.1
portable-atomic-util-0.2.4
proc-macro2-1.0.103
pyo3-build-config-0.27.2
pyo3-ffi-0.27.2
quote-1.0.42
ryu-1.0.20
serde-1.0.228
serde_core-1.0.228
serde_derive-1.0.228
serde_json-1.0.145
shlex-1.3.0
simdutf8-0.1.5
smallvec-1.15.1
syn-2.0.111
target-lexicon-0.13.3
unicode-ident-1.0.22
unwinding-0.2.8
uuid-1.19.0
version_check-0.9.5
xxhash-rust-0.8.15
zerocopy-0.8.31
zerocopy-derive-0.8.31
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="None https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/2.0.0/download -> associative-cache-2.0.0.crate
https://crates.io/api/v1/crates/bytecount/0.6.9/download -> bytecount-0.6.9.crate
https://crates.io/api/v1/crates/bytes/1.11.0/download -> bytes-1.11.0.crate
https://crates.io/api/v1/crates/cc/1.2.48/download -> cc-1.2.48.crate
https://crates.io/api/v1/crates/cfg-if/1.0.4/download -> cfg-if-1.0.4.crate
https://crates.io/api/v1/crates/crunchy/0.2.4/download -> crunchy-0.2.4.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.5/download -> find-msvc-tools-0.1.5.crate
https://crates.io/api/v1/crates/gimli/0.32.3/download -> gimli-0.32.3.crate
https://crates.io/api/v1/crates/half/2.7.1/download -> half-2.7.1.crate
https://crates.io/api/v1/crates/itoa/1.0.15/download -> itoa-1.0.15.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff/0.2.16/download -> jiff-0.2.16.crate
https://crates.io/api/v1/crates/jiff-static/0.2.16/download -> jiff-static-0.2.16.crate
https://crates.io/api/v1/crates/libc/0.2.178/download -> libc-0.2.178.crate
https://crates.io/api/v1/crates/memchr/2.7.6/download -> memchr-2.7.6.crate
https://crates.io/api/v1/crates/once_cell/1.21.3/download -> once_cell-1.21.3.crate
https://crates.io/api/v1/crates/portable-atomic/1.11.1/download -> portable-atomic-1.11.1.crate
https://crates.io/api/v1/crates/portable-atomic-util/0.2.4/download -> portable-atomic-util-0.2.4.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.103/download -> proc-macro2-1.0.103.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.27.2/download -> pyo3-build-config-0.27.2.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.27.2/download -> pyo3-ffi-0.27.2.crate
https://crates.io/api/v1/crates/quote/1.0.42/download -> quote-1.0.42.crate
https://crates.io/api/v1/crates/ryu/1.0.20/download -> ryu-1.0.20.crate
https://crates.io/api/v1/crates/serde/1.0.228/download -> serde-1.0.228.crate
https://crates.io/api/v1/crates/serde_core/1.0.228/download -> serde_core-1.0.228.crate
https://crates.io/api/v1/crates/serde_derive/1.0.228/download -> serde_derive-1.0.228.crate
https://crates.io/api/v1/crates/serde_json/1.0.145/download -> serde_json-1.0.145.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/smallvec/1.15.1/download -> smallvec-1.15.1.crate
https://crates.io/api/v1/crates/syn/2.0.111/download -> syn-2.0.111.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.3/download -> target-lexicon-0.13.3.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.22/download -> unicode-ident-1.0.22.crate
https://crates.io/api/v1/crates/unwinding/0.2.8/download -> unwinding-0.2.8.crate
https://crates.io/api/v1/crates/uuid/1.19.0/download -> uuid-1.19.0.crate
https://crates.io/api/v1/crates/version_check/0.9.5/download -> version_check-0.9.5.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.15/download -> xxhash-rust-0.8.15.crate
https://crates.io/api/v1/crates/zerocopy/0.8.31/download -> zerocopy-0.8.31.crate
https://crates.io/api/v1/crates/zerocopy-derive/0.8.31/download -> zerocopy-derive-0.8.31.crate
https://files.pythonhosted.org/packages/04/b8/333fdb27840f3bf04022d21b654a35f58e15407183aeb16f3b41aa053446/orjson-3.11.5.tar.gz -> orjson-3.11.5.tar.gz
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
S="${WORKDIR}/orjson-3.11.5"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
