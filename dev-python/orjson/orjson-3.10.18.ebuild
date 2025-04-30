# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
associative-cache-2.0.0
bytecount-0.6.8
castaway-0.2.3
cc-1.2.20
cfg-if-1.0.0
compact_str-0.9.0
crunchy-0.2.3
encoding_rs-0.8.35
gimli-0.31.1
half-2.6.0
itoa-1.0.15
itoap-1.0.1
jiff-0.2.10
jiff-static-0.2.10
libc-0.2.172
memchr-2.7.4
once_cell-1.21.3
portable-atomic-1.11.0
portable-atomic-util-0.2.4
proc-macro2-1.0.95
quote-1.0.40
rustversion-1.0.20
ryu-1.0.20
serde-1.0.219
serde_derive-1.0.219
serde_json-1.0.140
shlex-1.3.0
simdutf8-0.1.5
smallvec-1.15.0
static_assertions-1.1.0
syn-2.0.101
target-lexicon-0.13.2
unicode-ident-1.0.18
unwinding-0.2.5
uuid-1.16.0
version_check-0.9.5
xxhash-rust-0.8.15
"

inherit cargo distutils-r1

DESCRIPTION="Fast, correct Python JSON library supporting dataclasses, datetimes, and numpy"
HOMEPAGE="None https://pypi.org/project/orjson/"
SRC_URI="https://crates.io/api/v1/crates/associative-cache/2.0.0/download -> associative-cache-2.0.0.crate
https://crates.io/api/v1/crates/bytecount/0.6.8/download -> bytecount-0.6.8.crate
https://crates.io/api/v1/crates/castaway/0.2.3/download -> castaway-0.2.3.crate
https://crates.io/api/v1/crates/cc/1.2.20/download -> cc-1.2.20.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/compact_str/0.9.0/download -> compact_str-0.9.0.crate
https://crates.io/api/v1/crates/crunchy/0.2.3/download -> crunchy-0.2.3.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/gimli/0.31.1/download -> gimli-0.31.1.crate
https://crates.io/api/v1/crates/half/2.6.0/download -> half-2.6.0.crate
https://crates.io/api/v1/crates/itoa/1.0.15/download -> itoa-1.0.15.crate
https://crates.io/api/v1/crates/itoap/1.0.1/download -> itoap-1.0.1.crate
https://crates.io/api/v1/crates/jiff/0.2.10/download -> jiff-0.2.10.crate
https://crates.io/api/v1/crates/jiff-static/0.2.10/download -> jiff-static-0.2.10.crate
https://crates.io/api/v1/crates/libc/0.2.172/download -> libc-0.2.172.crate
https://crates.io/api/v1/crates/memchr/2.7.4/download -> memchr-2.7.4.crate
https://crates.io/api/v1/crates/once_cell/1.21.3/download -> once_cell-1.21.3.crate
https://crates.io/api/v1/crates/portable-atomic/1.11.0/download -> portable-atomic-1.11.0.crate
https://crates.io/api/v1/crates/portable-atomic-util/0.2.4/download -> portable-atomic-util-0.2.4.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.95/download -> proc-macro2-1.0.95.crate
https://crates.io/api/v1/crates/quote/1.0.40/download -> quote-1.0.40.crate
https://crates.io/api/v1/crates/rustversion/1.0.20/download -> rustversion-1.0.20.crate
https://crates.io/api/v1/crates/ryu/1.0.20/download -> ryu-1.0.20.crate
https://crates.io/api/v1/crates/serde/1.0.219/download -> serde-1.0.219.crate
https://crates.io/api/v1/crates/serde_derive/1.0.219/download -> serde_derive-1.0.219.crate
https://crates.io/api/v1/crates/serde_json/1.0.140/download -> serde_json-1.0.140.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simdutf8/0.1.5/download -> simdutf8-0.1.5.crate
https://crates.io/api/v1/crates/smallvec/1.15.0/download -> smallvec-1.15.0.crate
https://crates.io/api/v1/crates/static_assertions/1.1.0/download -> static_assertions-1.1.0.crate
https://crates.io/api/v1/crates/syn/2.0.101/download -> syn-2.0.101.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.2/download -> target-lexicon-0.13.2.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.18/download -> unicode-ident-1.0.18.crate
https://crates.io/api/v1/crates/unwinding/0.2.5/download -> unwinding-0.2.5.crate
https://crates.io/api/v1/crates/uuid/1.16.0/download -> uuid-1.16.0.crate
https://crates.io/api/v1/crates/version_check/0.9.5/download -> version_check-0.9.5.crate
https://crates.io/api/v1/crates/xxhash-rust/0.8.15/download -> xxhash-rust-0.8.15.crate
https://files.pythonhosted.org/packages/81/0b/fea456a3ffe74e70ba30e01ec183a9b26bec4d497f61dcfce1b601059c60/orjson-3.10.18.tar.gz -> orjson-3.10.18.tar.gz
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
S="${WORKDIR}/orjson-3.10.18"

QA_FLAGS_IGNORED=".*"

distutils_enable_tests pytest

python_test() {
	local -x PYTEST_DISABLE_PLUGIN_AUTOLOAD=1
	epytest -s
}
