# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
arrayvec-0.7.4
associative-cache-2.0.0
autocfg-1.3.0
beef-0.5.2
bytecount-0.6.8
castaway-0.2.2
cc-1.0.104
cfg-if-1.0.0
chrono-0.4.34
compact_str-0.7.1
crunchy-0.2.2
encoding_rs-0.8.34
gimli-0.30.0
half-2.4.1
itoa-1.0.11
itoap-1.0.1
libc-0.2.155
no-panic-0.1.30
num-traits-0.2.19
once_cell-1.19.0
proc-macro2-1.0.86
pyo3-build-config-0.22.0
pyo3-ffi-0.22.0
quote-1.0.36
rustversion-1.0.17
ryu-1.0.18
serde-1.0.203
serde_derive-1.0.203
serde_json-1.0.120
simdutf8-0.1.4
smallvec-1.13.2
static_assertions-1.1.0
syn-2.0.68
target-lexicon-0.12.14
unicode-ident-1.0.12
unwinding-0.2.2
version_check-0.9.4
xxhash-rust-0.8.10
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="https://github.com/ijl/orjson https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/arrayvec/0.7.4/download -> arrayvec-0.7.4.crate
https://crates.io/api/v1/crates/associative-cache/2.0.0/download -> associative-cache-2.0.0.crate
https://crates.io/api/v1/crates/autocfg/1.3.0/download -> autocfg-1.3.0.crate
https://crates.io/api/v1/crates/beef/0.5.2/download -> beef-0.5.2.crate
https://crates.io/api/v1/crates/bytecount/0.6.8/download -> bytecount-0.6.8.crate
https://crates.io/api/v1/crates/castaway/0.2.2/download -> castaway-0.2.2.crate
https://crates.io/api/v1/crates/cc/1.0.104/download -> cc-1.0.104.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/chrono/0.4.34/download -> chrono-0.4.34.crate
https://crates.io/api/v1/crates/compact_str/0.7.1/download -> compact_str-0.7.1.crate
https://crates.io/api/v1/crates/crunchy/0.2.2/download -> crunchy-0.2.2.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.34/download -> encoding_rs-0.8.34.crate
https://crates.io/api/v1/crates/gimli/0.30.0/download -> gimli-0.30.0.crate
https://crates.io/api/v1/crates/half/2.4.1/download -> half-2.4.1.crate
https://crates.io/api/v1/crates/itoa/1.0.11/download -> itoa-1.0.11.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/libc/0.2.155/download -> libc-0.2.155.crate
https://crates.io/api/v1/crates/no-panic/0.1.30/download -> no-panic-0.1.30.crate
https://crates.io/api/v1/crates/num-traits/0.2.19/download -> num-traits-0.2.19.crate
https://crates.io/api/v1/crates/once_cell/1.19.0/download -> once_cell-1.19.0.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.86/download -> proc-macro2-1.0.86.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.22.0/download -> pyo3-build-config-0.22.0.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.22.0/download -> pyo3-ffi-0.22.0.crate
https://crates.io/api/v1/crates/quote/1.0.36/download -> quote-1.0.36.crate
https://crates.io/api/v1/crates/rustversion/1.0.17/download -> rustversion-1.0.17.crate
https://crates.io/api/v1/crates/ryu/1.0.18/download -> ryu-1.0.18.crate
https://crates.io/api/v1/crates/serde/1.0.203/download -> serde-1.0.203.crate
https://crates.io/api/v1/crates/serde_derive/1.0.203/download -> serde_derive-1.0.203.crate
https://crates.io/api/v1/crates/serde_json/1.0.120/download -> serde_json-1.0.120.crate
https://crates.io/api/v1/crates/simdutf8/0.1.4/download -> simdutf8-0.1.4.crate
https://crates.io/api/v1/crates/smallvec/1.13.2/download -> smallvec-1.13.2.crate
https://crates.io/api/v1/crates/static_assertions/1.1.0/download -> static_assertions-1.1.0.crate
https://crates.io/api/v1/crates/syn/2.0.68/download -> syn-2.0.68.crate
https://crates.io/api/v1/crates/target-lexicon/0.12.14/download -> target-lexicon-0.12.14.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.12/download -> unicode-ident-1.0.12.crate
https://crates.io/api/v1/crates/unwinding/0.2.2/download -> unwinding-0.2.2.crate
https://crates.io/api/v1/crates/version_check/0.9.4/download -> version_check-0.9.4.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.10/download -> xxhash-rust-0.8.10.crate
https://files.pythonhosted.org/packages/70/24/8be1c9f6d21e3c510c441d6cbb6f3a75f2538b42a45f0c17ffb2182882f1/orjson-3.10.6.tar.gz -> orjson-3.10.6.tar.gz
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
S="${WORKDIR}/orjson-3.10.6"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
