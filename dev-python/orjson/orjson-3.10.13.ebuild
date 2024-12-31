# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-2.0.0
bytecount-0.6.8
castaway-0.2.3
cc-1.2.1
cfg-if-1.0.0
compact_str-0.8.0
crunchy-0.2.2
encoding_rs-0.8.35
gimli-0.31.1
half-2.4.1
itoa-1.0.13
itoap-1.0.1
jiff-0.1.14
libc-0.2.164
memchr-2.7.4
once_cell-1.20.2
proc-macro2-1.0.92
quote-1.0.37
rustversion-1.0.18
ryu-1.0.18
serde-1.0.215
serde_derive-1.0.215
serde_json-1.0.133
shlex-1.3.0
simdutf8-0.1.5
smallvec-1.13.2
static_assertions-1.1.0
syn-2.0.89
target-lexicon-0.12.16
unicode-ident-1.0.14
unwinding-0.2.4
uuid-1.11.0
version_check-0.9.5
xxhash-rust-0.8.12
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="https://github.com/ijl/orjson https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/2.0.0/download -> associative-cache-2.0.0.crate
https://crates.io/api/v1/crates/bytecount/0.6.8/download -> bytecount-0.6.8.crate
https://crates.io/api/v1/crates/castaway/0.2.3/download -> castaway-0.2.3.crate
https://crates.io/api/v1/crates/cc/1.2.1/download -> cc-1.2.1.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/compact_str/0.8.0/download -> compact_str-0.8.0.crate
https://crates.io/api/v1/crates/crunchy/0.2.2/download -> crunchy-0.2.2.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/gimli/0.31.1/download -> gimli-0.31.1.crate
https://crates.io/api/v1/crates/half/2.4.1/download -> half-2.4.1.crate
https://crates.io/api/v1/crates/itoa/1.0.13/download -> itoa-1.0.13.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff/0.1.14/download -> jiff-0.1.14.crate
https://crates.io/api/v1/crates/libc/0.2.164/download -> libc-0.2.164.crate
https://crates.io/api/v1/crates/memchr/2.7.4/download -> memchr-2.7.4.crate
https://crates.io/api/v1/crates/once_cell/1.20.2/download -> once_cell-1.20.2.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.92/download -> proc-macro2-1.0.92.crate
https://crates.io/api/v1/crates/quote/1.0.37/download -> quote-1.0.37.crate
https://crates.io/api/v1/crates/rustversion/1.0.18/download -> rustversion-1.0.18.crate
https://crates.io/api/v1/crates/ryu/1.0.18/download -> ryu-1.0.18.crate
https://crates.io/api/v1/crates/serde/1.0.215/download -> serde-1.0.215.crate
https://crates.io/api/v1/crates/serde_derive/1.0.215/download -> serde_derive-1.0.215.crate
https://crates.io/api/v1/crates/serde_json/1.0.133/download -> serde_json-1.0.133.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/smallvec/1.13.2/download -> smallvec-1.13.2.crate
https://crates.io/api/v1/crates/static_assertions/1.1.0/download -> static_assertions-1.1.0.crate
https://crates.io/api/v1/crates/syn/2.0.89/download -> syn-2.0.89.crate
https://crates.io/api/v1/crates/target-lexicon/0.12.16/download -> target-lexicon-0.12.16.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.14/download -> unicode-ident-1.0.14.crate
https://crates.io/api/v1/crates/unwinding/0.2.4/download -> unwinding-0.2.4.crate
https://crates.io/api/v1/crates/uuid/1.11.0/download -> uuid-1.11.0.crate
https://crates.io/api/v1/crates/version_check/0.9.5/download -> version_check-0.9.5.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.12/download -> xxhash-rust-0.8.12.crate
https://files.pythonhosted.org/packages/45/0b/8c7eaf1e2152f1e0fb28ae7b22e2b35a6b1992953a1ebe0371ba4d41d3ad/orjson-3.10.13.tar.gz -> orjson-3.10.13.tar.gz
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
S="${WORKDIR}/orjson-3.10.13"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
