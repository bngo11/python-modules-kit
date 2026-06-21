# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
CRATES="
adler2-2.0.1
aho-corasick-1.1.4
allocator-api2-0.2.21
anstream-1.0.0
anstyle-1.0.14
anstyle-parse-1.0.0
anstyle-query-1.1.5
anstyle-wincon-3.0.11
anyhow-1.0.102
ar_archive_writer-0.5.1
arwen-0.0.5
arwen-codesign-0.0.1-alpha.1
autocfg-1.5.0
automod-1.0.16
base64-0.22.1
base64ct-1.8.3
bitflags-2.11.1
block-buffer-0.10.4
block-buffer-0.12.0
borrow-or-share-0.2.4
boxcar-0.2.14
bstr-1.12.1
bumpalo-3.20.2
byteorder-1.5.0
bytes-1.11.1
bytesize-2.3.1
bzip2-0.6.1
cab-0.6.0
camino-1.2.2
cargo-config2-0.1.44
cargo-cyclonedx-0.5.9
cargo-lock-10.1.0
cargo-options-0.8.1
cargo-platform-0.1.9
cargo-platform-0.3.2
cargo-xwin-0.23.0
cargo-zigbuild-0.23.0
cargo_metadata-0.18.1
cargo_metadata-0.23.1
cbindgen-0.29.2
cc-1.2.60
cesu8-1.1.0
cfb-0.14.0
cfg-if-1.0.4
cfg_aliases-0.2.1
charset-0.1.5
chumsky-0.12.0
clap-4.6.1
clap_builder-4.6.0
clap_complete-4.6.2
clap_complete_command-0.6.1
clap_complete_nushell-4.6.0
clap_derive-4.6.1
clap_lex-1.1.0
cli-table-0.5.0
colorchoice-1.0.5
combine-4.6.7
configparser-3.1.0
console-0.16.3
const-oid-0.10.2
content_inspector-0.2.4
cookie-0.18.1
cookie_store-0.22.1
core-foundation-0.9.4
core-foundation-0.10.1
core-foundation-sys-0.8.7
cpufeatures-0.2.17
cpufeatures-0.3.0
crc-3.4.0
crc-catalog-2.4.0
crc32fast-1.5.0
crossbeam-channel-0.5.15
crossbeam-deque-0.8.6
crossbeam-epoch-0.9.18
crossbeam-utils-0.8.21
crypto-common-0.1.7
crypto-common-0.2.1
cyclonedx-bom-0.8.1
cyclonedx-bom-macros-0.1.0
data-encoding-2.10.0
der-0.8.0
deranged-0.5.8
dialoguer-0.12.0
diff-0.1.13
digest-0.10.7
digest-0.11.2
dirs-6.0.0
dirs-sys-0.5.0
displaydoc-0.2.5
dissimilar-1.0.11
document-features-0.2.12
dunce-1.0.5
dyn-clone-1.0.20
either-1.15.0
encode_unicode-1.0.0
encoding_rs-0.8.35
env_logger-0.10.2
equivalent-1.0.2
errno-0.3.14
expect-test-1.5.1
fastrand-2.4.1
fat-macho-0.4.10
filetime-0.2.27
find-msvc-tools-0.1.9
flate2-1.1.9
fluent-uri-0.4.1
fnv-1.0.7
foldhash-0.1.5
foldhash-0.2.0
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.2.2
fs-err-3.3.0
fs4-0.13.1
futures-core-0.3.32
futures-macro-0.3.32
futures-task-0.3.32
futures-timer-3.0.3
futures-util-0.3.32
generic-array-0.14.7
getrandom-0.2.17
getrandom-0.3.4
getrandom-0.4.2
glob-0.3.3
globset-0.4.18
goblin-0.10.5
hashbrown-0.15.5
hashbrown-0.16.1
hashbrown-0.17.0
heck-0.5.0
hermit-abi-0.5.2
hex-0.4.3
http-1.4.0
httparse-1.10.1
humantime-2.3.0
humantime-serde-1.1.1
hybrid-array-0.4.10
icu_collections-2.2.0
icu_locale_core-2.2.0
icu_normalizer-2.2.0
icu_normalizer_data-2.2.0
icu_properties-2.2.0
icu_properties_data-2.2.0
icu_provider-2.2.0
id-arena-2.3.0
idna-1.1.0
idna_adapter-1.2.1
ignore-0.4.25
indexmap-2.14.0
indicatif-0.18.4
indoc-2.0.7
insta-1.47.2
is-terminal-0.4.17
is_terminal_polyfill-1.70.2
itertools-0.13.0
itertools-0.14.0
itoa-1.0.18
jni-0.21.1
jni-sys-0.3.1
jni-sys-0.4.1
jni-sys-macros-0.4.1
jobserver-0.1.34
js-sys-0.3.95
keyring-3.6.3
lazy_static-1.5.0
lddtree-0.5.0
leb128fmt-0.1.0
libbz2-rs-sys-0.2.3
libc-0.2.185
libmimalloc-sys-0.1.46
libredox-0.1.16
linux-keyutils-0.2.5
linux-raw-sys-0.12.1
litemap-0.8.2
litrs-1.0.0
lock_api-0.4.14
log-0.4.29
lzma-rust2-0.16.2
lzma-sys-0.1.20
lzxd-0.2.6
mailparse-0.16.1
matchers-0.2.0
memchr-2.8.0
memmap2-0.9.10
memo-map-0.3.3
mimalloc-0.1.49
mime-0.3.17
mime_guess-2.0.5
minijinja-2.19.0
miniz_oxide-0.8.9
msi-0.10.0
native-tls-0.2.18
nix-0.31.2
nom-8.0.0
normalize-line-endings-0.3.0
normpath-1.5.0
nu-ansi-term-0.50.3
num-conv-0.2.1
num-traits-0.2.19
object-0.37.3
object-0.38.1
once_cell-1.21.4
once_cell_polyfill-1.70.2
openssl-0.10.80
openssl-macros-0.1.1
openssl-probe-0.2.1
openssl-sys-0.9.116
option-ext-0.2.0
ordered-float-5.3.0
os_pipe-1.2.3
parking_lot-0.12.5
parking_lot_core-0.9.12
paste-1.0.15
path-slash-0.2.1
pathdiff-0.2.3
pem-rfc7468-1.0.0
pep440_rs-0.7.3
pep508_rs-0.9.2
percent-encoding-2.3.2
phf-0.11.3
phf_generator-0.11.3
phf_macros-0.11.3
phf_shared-0.11.3
pin-project-lite-0.2.17
pkg-config-0.3.33
plain-0.2.3
platform-info-2.1.0
portable-atomic-1.13.1
potential_utf-0.1.5
powerfmt-0.2.0
pretty_assertions-1.4.1
prettyplease-0.2.37
proc-macro-crate-3.5.0
proc-macro2-1.0.106
psm-0.1.30
purl-0.1.6
pyo3-introspection-0.29.0
pyproject-toml-0.13.7
python-pkginfo-0.6.8
quote-1.0.45
quoted_printable-0.5.2
r-efi-5.3.0
r-efi-6.0.0
rand-0.8.6
rand_core-0.6.4
rayon-1.12.0
rayon-core-1.13.0
redox_syscall-0.5.18
redox_syscall-0.7.4
redox_users-0.5.2
ref-cast-1.0.25
ref-cast-impl-1.0.25
reflink-copy-0.1.29
regex-1.12.3
regex-automata-0.3.9
regex-automata-0.4.14
regex-syntax-0.7.5
regex-syntax-0.8.10
relative-path-1.9.3
rfc2047-decoder-1.1.0
ring-0.17.14
rstest-0.26.1
rstest_macros-0.26.1
rustc-hash-2.1.2
rustc_version-0.4.1
rustflags-0.1.7
rustix-1.1.4
rustls-0.23.38
rustls-native-certs-0.8.3
rustls-pki-types-1.14.0
rustls-platform-verifier-0.6.2
rustls-platform-verifier-android-0.1.1
rustls-webpki-0.103.13
rustversion-1.0.22
ruzstd-0.8.2
same-file-1.0.6
scc-2.4.0
schannel-0.1.29
schemars-1.2.1
schemars_derive-1.2.1
scopeguard-1.2.0
scroll-0.13.0
scroll_derive-0.13.1
sdd-3.0.10
security-framework-2.11.1
security-framework-3.7.0
security-framework-sys-2.17.0
semver-1.0.28
serde-1.0.228
serde_core-1.0.228
serde_derive-1.0.228
serde_derive_internals-0.29.1
serde_json-1.0.149
serde_spanned-0.6.9
serde_spanned-1.1.1
serial_test-3.4.0
serial_test_derive-3.4.0
sha2-0.10.9
sha2-0.11.0
sharded-slab-0.1.7
shell-words-1.1.1
shlex-1.3.0
simd-adler32-0.3.9
similar-2.7.0
siphasher-1.0.2
slab-0.4.12
smallvec-1.15.1
smawk-0.3.2
snapbox-1.2.1
snapbox-macros-1.1.0
socks-0.3.4
spdx-0.13.4
stable_deref_trait-1.2.1
stacker-0.1.23
strsim-0.11.1
strum-0.28.0
strum_macros-0.28.0
subtle-2.6.1
syn-2.0.117
synstructure-0.13.2
tar-0.4.46
target-lexicon-0.13.5
tempfile-3.27.0
termcolor-1.4.1
terminal_size-0.4.4
textwrap-0.16.2
thiserror-1.0.69
thiserror-2.0.18
thiserror-impl-1.0.69
thiserror-impl-2.0.18
thread_local-1.1.9
time-0.3.47
time-core-0.1.8
time-macros-0.2.27
tinystr-0.8.3
toml-0.8.23
toml-0.9.12+spec-1.1.0
toml-1.1.2+spec-1.1.0
toml_datetime-0.6.11
toml_datetime-0.7.5+spec-1.1.0
toml_datetime-1.1.1+spec-1.1.0
toml_edit-0.22.27
toml_edit-0.25.11+spec-1.1.0
toml_parser-1.1.2+spec-1.1.0
toml_write-0.1.2
toml_writer-1.1.1+spec-1.1.0
tracing-0.1.44
tracing-attributes-0.1.31
tracing-core-0.1.36
tracing-log-0.2.0
tracing-serde-0.2.0
tracing-subscriber-0.3.23
trycmd-1.2.0
twox-hash-2.1.2
typed-path-0.12.3
typenum-1.20.0
unicase-2.9.0
unicode-ident-1.0.24
unicode-linebreak-0.1.5
unicode-segmentation-1.13.2
unicode-width-0.2.2
unicode-xid-0.2.6
unit-prefix-0.5.2
unscanny-0.1.0
untrusted-0.9.0
ureq-3.3.0
ureq-proto-0.6.0
url-2.5.8
urlencoding-2.1.3
utf8-zero-0.8.1
utf8_iter-1.0.4
utf8parse-0.2.2
uuid-1.23.1
validator-0.19.0
valuable-0.1.1
vcpkg-0.2.15
version-ranges-0.1.3
version_check-0.9.5
versions-7.0.0
wait-timeout-0.2.1
walkdir-2.5.0
wasi-0.11.1+wasi-snapshot-preview1
wasip2-1.0.3+wasi-0.2.9
wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06
wasm-bindgen-0.2.118
wasm-bindgen-macro-0.2.118
wasm-bindgen-macro-support-0.2.118
wasm-bindgen-shared-0.2.118
wasm-encoder-0.244.0
wasm-metadata-0.244.0
wasmparser-0.244.0
web-time-1.1.0
webpki-root-certs-1.0.7
webpki-roots-1.0.7
which-8.0.2
wild-2.2.1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.11
winapi-x86_64-pc-windows-gnu-0.4.0
windows-0.62.2
windows-collections-0.3.2
windows-core-0.62.2
windows-future-0.3.2
windows-implement-0.60.2
windows-interface-0.59.3
windows-link-0.2.1
windows-numerics-0.3.1
windows-result-0.4.1
windows-strings-0.5.1
windows-sys-0.45.0
windows-sys-0.52.0
windows-sys-0.59.0
windows-sys-0.60.2
windows-sys-0.61.2
windows-targets-0.42.2
windows-targets-0.52.6
windows-targets-0.53.5
windows-threading-0.2.1
windows_aarch64_gnullvm-0.42.2
windows_aarch64_gnullvm-0.52.6
windows_aarch64_gnullvm-0.53.1
windows_aarch64_msvc-0.42.2
windows_aarch64_msvc-0.52.6
windows_aarch64_msvc-0.53.1
windows_i686_gnu-0.42.2
windows_i686_gnu-0.52.6
windows_i686_gnu-0.53.1
windows_i686_gnullvm-0.52.6
windows_i686_gnullvm-0.53.1
windows_i686_msvc-0.42.2
windows_i686_msvc-0.52.6
windows_i686_msvc-0.53.1
windows_x86_64_gnu-0.42.2
windows_x86_64_gnu-0.52.6
windows_x86_64_gnu-0.53.1
windows_x86_64_gnullvm-0.42.2
windows_x86_64_gnullvm-0.52.6
windows_x86_64_gnullvm-0.53.1
windows_x86_64_msvc-0.42.2
windows_x86_64_msvc-0.52.6
windows_x86_64_msvc-0.53.1
winnow-0.7.15
winnow-1.0.1
wit-bindgen-0.51.0
wit-bindgen-0.57.1
wit-bindgen-core-0.51.0
wit-bindgen-rust-0.51.0
wit-bindgen-rust-macro-0.51.0
wit-component-0.244.0
wit-parser-0.244.0
writeable-0.6.3
xattr-1.6.1
xml-rs-0.8.28
xwin-0.9.0
xz2-0.1.7
yansi-1.0.1
yoke-0.8.2
yoke-derive-0.8.2
zerofrom-0.1.7
zerofrom-derive-0.1.7
zeroize-1.8.2
zerotrie-0.2.4
zerovec-0.11.6
zerovec-derive-0.11.3
zip-7.2.0
zip-8.5.1
zlib-rs-0.6.3
zmij-1.0.21
zopfli-0.8.3
zstd-0.13.3
zstd-safe-7.2.4
zstd-sys-2.0.16+zstd.1.5.7
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://crates.io/api/v1/crates/adler2/2.0.1/download -> adler2-2.0.1.crate
https://crates.io/api/v1/crates/aho-corasick/1.1.4/download -> aho-corasick-1.1.4.crate
https://crates.io/api/v1/crates/allocator-api2/0.2.21/download -> allocator-api2-0.2.21.crate
https://crates.io/api/v1/crates/anstream/1.0.0/download -> anstream-1.0.0.crate
https://crates.io/api/v1/crates/anstyle/1.0.14/download -> anstyle-1.0.14.crate
https://crates.io/api/v1/crates/anstyle-parse/1.0.0/download -> anstyle-parse-1.0.0.crate
https://crates.io/api/v1/crates/anstyle-query/1.1.5/download -> anstyle-query-1.1.5.crate
https://crates.io/api/v1/crates/anstyle-wincon/3.0.11/download -> anstyle-wincon-3.0.11.crate
https://crates.io/api/v1/crates/anyhow/1.0.102/download -> anyhow-1.0.102.crate
https://crates.io/api/v1/crates/ar_archive_writer/0.5.1/download -> ar_archive_writer-0.5.1.crate
https://crates.io/api/v1/crates/arwen/0.0.5/download -> arwen-0.0.5.crate
https://crates.io/api/v1/crates/arwen-codesign/0.0.1-alpha.1/download -> arwen-codesign-0.0.1-alpha.1.crate
https://crates.io/api/v1/crates/autocfg/1.5.0/download -> autocfg-1.5.0.crate
https://crates.io/api/v1/crates/automod/1.0.16/download -> automod-1.0.16.crate
https://crates.io/api/v1/crates/base64/0.22.1/download -> base64-0.22.1.crate
https://crates.io/api/v1/crates/base64ct/1.8.3/download -> base64ct-1.8.3.crate
https://crates.io/api/v1/crates/bitflags/2.11.1/download -> bitflags-2.11.1.crate
https://crates.io/api/v1/crates/block-buffer/0.10.4/download -> block-buffer-0.10.4.crate
https://crates.io/api/v1/crates/block-buffer/0.12.0/download -> block-buffer-0.12.0.crate
https://crates.io/api/v1/crates/borrow-or-share/0.2.4/download -> borrow-or-share-0.2.4.crate
https://crates.io/api/v1/crates/boxcar/0.2.14/download -> boxcar-0.2.14.crate
https://crates.io/api/v1/crates/bstr/1.12.1/download -> bstr-1.12.1.crate
https://crates.io/api/v1/crates/bumpalo/3.20.2/download -> bumpalo-3.20.2.crate
https://crates.io/api/v1/crates/byteorder/1.5.0/download -> byteorder-1.5.0.crate
https://crates.io/api/v1/crates/bytes/1.11.1/download -> bytes-1.11.1.crate
https://crates.io/api/v1/crates/bytesize/2.3.1/download -> bytesize-2.3.1.crate
https://crates.io/api/v1/crates/bzip2/0.6.1/download -> bzip2-0.6.1.crate
https://crates.io/api/v1/crates/cab/0.6.0/download -> cab-0.6.0.crate
https://crates.io/api/v1/crates/camino/1.2.2/download -> camino-1.2.2.crate
https://crates.io/api/v1/crates/cargo-config2/0.1.44/download -> cargo-config2-0.1.44.crate
https://crates.io/api/v1/crates/cargo-cyclonedx/0.5.9/download -> cargo-cyclonedx-0.5.9.crate
https://crates.io/api/v1/crates/cargo-lock/10.1.0/download -> cargo-lock-10.1.0.crate
https://crates.io/api/v1/crates/cargo-options/0.8.1/download -> cargo-options-0.8.1.crate
https://crates.io/api/v1/crates/cargo-platform/0.1.9/download -> cargo-platform-0.1.9.crate
https://crates.io/api/v1/crates/cargo-platform/0.3.2/download -> cargo-platform-0.3.2.crate
https://crates.io/api/v1/crates/cargo-xwin/0.23.0/download -> cargo-xwin-0.23.0.crate
https://crates.io/api/v1/crates/cargo-zigbuild/0.23.0/download -> cargo-zigbuild-0.23.0.crate
https://crates.io/api/v1/crates/cargo_metadata/0.18.1/download -> cargo_metadata-0.18.1.crate
https://crates.io/api/v1/crates/cargo_metadata/0.23.1/download -> cargo_metadata-0.23.1.crate
https://crates.io/api/v1/crates/cbindgen/0.29.2/download -> cbindgen-0.29.2.crate
https://crates.io/api/v1/crates/cc/1.2.60/download -> cc-1.2.60.crate
https://crates.io/api/v1/crates/cesu8/1.1.0/download -> cesu8-1.1.0.crate
https://crates.io/api/v1/crates/cfb/0.14.0/download -> cfb-0.14.0.crate
https://crates.io/api/v1/crates/cfg-if/1.0.4/download -> cfg-if-1.0.4.crate
https://crates.io/api/v1/crates/cfg_aliases/0.2.1/download -> cfg_aliases-0.2.1.crate
https://crates.io/api/v1/crates/charset/0.1.5/download -> charset-0.1.5.crate
https://crates.io/api/v1/crates/chumsky/0.12.0/download -> chumsky-0.12.0.crate
https://crates.io/api/v1/crates/clap/4.6.1/download -> clap-4.6.1.crate
https://crates.io/api/v1/crates/clap_builder/4.6.0/download -> clap_builder-4.6.0.crate
https://crates.io/api/v1/crates/clap_complete/4.6.2/download -> clap_complete-4.6.2.crate
https://crates.io/api/v1/crates/clap_complete_command/0.6.1/download -> clap_complete_command-0.6.1.crate
https://crates.io/api/v1/crates/clap_complete_nushell/4.6.0/download -> clap_complete_nushell-4.6.0.crate
https://crates.io/api/v1/crates/clap_derive/4.6.1/download -> clap_derive-4.6.1.crate
https://crates.io/api/v1/crates/clap_lex/1.1.0/download -> clap_lex-1.1.0.crate
https://crates.io/api/v1/crates/cli-table/0.5.0/download -> cli-table-0.5.0.crate
https://crates.io/api/v1/crates/colorchoice/1.0.5/download -> colorchoice-1.0.5.crate
https://crates.io/api/v1/crates/combine/4.6.7/download -> combine-4.6.7.crate
https://crates.io/api/v1/crates/configparser/3.1.0/download -> configparser-3.1.0.crate
https://crates.io/api/v1/crates/console/0.16.3/download -> console-0.16.3.crate
https://crates.io/api/v1/crates/const-oid/0.10.2/download -> const-oid-0.10.2.crate
https://crates.io/api/v1/crates/content_inspector/0.2.4/download -> content_inspector-0.2.4.crate
https://crates.io/api/v1/crates/cookie/0.18.1/download -> cookie-0.18.1.crate
https://crates.io/api/v1/crates/cookie_store/0.22.1/download -> cookie_store-0.22.1.crate
https://crates.io/api/v1/crates/core-foundation/0.9.4/download -> core-foundation-0.9.4.crate
https://crates.io/api/v1/crates/core-foundation/0.10.1/download -> core-foundation-0.10.1.crate
https://crates.io/api/v1/crates/core-foundation-sys/0.8.7/download -> core-foundation-sys-0.8.7.crate
https://crates.io/api/v1/crates/cpufeatures/0.2.17/download -> cpufeatures-0.2.17.crate
https://crates.io/api/v1/crates/cpufeatures/0.3.0/download -> cpufeatures-0.3.0.crate
https://crates.io/api/v1/crates/crc/3.4.0/download -> crc-3.4.0.crate
https://crates.io/api/v1/crates/crc-catalog/2.4.0/download -> crc-catalog-2.4.0.crate
https://crates.io/api/v1/crates/crc32fast/1.5.0/download -> crc32fast-1.5.0.crate
https://crates.io/api/v1/crates/crossbeam-channel/0.5.15/download -> crossbeam-channel-0.5.15.crate
https://crates.io/api/v1/crates/crossbeam-deque/0.8.6/download -> crossbeam-deque-0.8.6.crate
https://crates.io/api/v1/crates/crossbeam-epoch/0.9.18/download -> crossbeam-epoch-0.9.18.crate
https://crates.io/api/v1/crates/crossbeam-utils/0.8.21/download -> crossbeam-utils-0.8.21.crate
https://crates.io/api/v1/crates/crypto-common/0.1.7/download -> crypto-common-0.1.7.crate
https://crates.io/api/v1/crates/crypto-common/0.2.1/download -> crypto-common-0.2.1.crate
https://crates.io/api/v1/crates/cyclonedx-bom/0.8.1/download -> cyclonedx-bom-0.8.1.crate
https://crates.io/api/v1/crates/cyclonedx-bom-macros/0.1.0/download -> cyclonedx-bom-macros-0.1.0.crate
https://crates.io/api/v1/crates/data-encoding/2.10.0/download -> data-encoding-2.10.0.crate
https://crates.io/api/v1/crates/der/0.8.0/download -> der-0.8.0.crate
https://crates.io/api/v1/crates/deranged/0.5.8/download -> deranged-0.5.8.crate
https://crates.io/api/v1/crates/dialoguer/0.12.0/download -> dialoguer-0.12.0.crate
https://crates.io/api/v1/crates/diff/0.1.13/download -> diff-0.1.13.crate
https://crates.io/api/v1/crates/digest/0.10.7/download -> digest-0.10.7.crate
https://crates.io/api/v1/crates/digest/0.11.2/download -> digest-0.11.2.crate
https://crates.io/api/v1/crates/dirs/6.0.0/download -> dirs-6.0.0.crate
https://crates.io/api/v1/crates/dirs-sys/0.5.0/download -> dirs-sys-0.5.0.crate
https://crates.io/api/v1/crates/displaydoc/0.2.5/download -> displaydoc-0.2.5.crate
https://crates.io/api/v1/crates/dissimilar/1.0.11/download -> dissimilar-1.0.11.crate
https://crates.io/api/v1/crates/document-features/0.2.12/download -> document-features-0.2.12.crate
https://crates.io/api/v1/crates/dunce/1.0.5/download -> dunce-1.0.5.crate
https://crates.io/api/v1/crates/dyn-clone/1.0.20/download -> dyn-clone-1.0.20.crate
https://crates.io/api/v1/crates/either/1.15.0/download -> either-1.15.0.crate
https://crates.io/api/v1/crates/encode_unicode/1.0.0/download -> encode_unicode-1.0.0.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.35/download -> encoding_rs-0.8.35.crate
https://crates.io/api/v1/crates/env_logger/0.10.2/download -> env_logger-0.10.2.crate
https://crates.io/api/v1/crates/equivalent/1.0.2/download -> equivalent-1.0.2.crate
https://crates.io/api/v1/crates/errno/0.3.14/download -> errno-0.3.14.crate
https://crates.io/api/v1/crates/expect-test/1.5.1/download -> expect-test-1.5.1.crate
https://crates.io/api/v1/crates/fastrand/2.4.1/download -> fastrand-2.4.1.crate
https://crates.io/api/v1/crates/fat-macho/0.4.10/download -> fat-macho-0.4.10.crate
https://crates.io/api/v1/crates/filetime/0.2.27/download -> filetime-0.2.27.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.9/download -> find-msvc-tools-0.1.9.crate
https://crates.io/api/v1/crates/flate2/1.1.9/download -> flate2-1.1.9.crate
https://crates.io/api/v1/crates/fluent-uri/0.4.1/download -> fluent-uri-0.4.1.crate
https://crates.io/api/v1/crates/fnv/1.0.7/download -> fnv-1.0.7.crate
https://crates.io/api/v1/crates/foldhash/0.1.5/download -> foldhash-0.1.5.crate
https://crates.io/api/v1/crates/foldhash/0.2.0/download -> foldhash-0.2.0.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/form_urlencoded/1.2.2/download -> form_urlencoded-1.2.2.crate
https://crates.io/api/v1/crates/fs-err/3.3.0/download -> fs-err-3.3.0.crate
https://crates.io/api/v1/crates/fs4/0.13.1/download -> fs4-0.13.1.crate
https://crates.io/api/v1/crates/futures-core/0.3.32/download -> futures-core-0.3.32.crate
https://crates.io/api/v1/crates/futures-macro/0.3.32/download -> futures-macro-0.3.32.crate
https://crates.io/api/v1/crates/futures-task/0.3.32/download -> futures-task-0.3.32.crate
https://crates.io/api/v1/crates/futures-timer/3.0.3/download -> futures-timer-3.0.3.crate
https://crates.io/api/v1/crates/futures-util/0.3.32/download -> futures-util-0.3.32.crate
https://crates.io/api/v1/crates/generic-array/0.14.7/download -> generic-array-0.14.7.crate
https://crates.io/api/v1/crates/getrandom/0.2.17/download -> getrandom-0.2.17.crate
https://crates.io/api/v1/crates/getrandom/0.3.4/download -> getrandom-0.3.4.crate
https://crates.io/api/v1/crates/getrandom/0.4.2/download -> getrandom-0.4.2.crate
https://crates.io/api/v1/crates/glob/0.3.3/download -> glob-0.3.3.crate
https://crates.io/api/v1/crates/globset/0.4.18/download -> globset-0.4.18.crate
https://crates.io/api/v1/crates/goblin/0.10.5/download -> goblin-0.10.5.crate
https://crates.io/api/v1/crates/hashbrown/0.15.5/download -> hashbrown-0.15.5.crate
https://crates.io/api/v1/crates/hashbrown/0.16.1/download -> hashbrown-0.16.1.crate
https://crates.io/api/v1/crates/hashbrown/0.17.0/download -> hashbrown-0.17.0.crate
https://crates.io/api/v1/crates/heck/0.5.0/download -> heck-0.5.0.crate
https://crates.io/api/v1/crates/hermit-abi/0.5.2/download -> hermit-abi-0.5.2.crate
https://crates.io/api/v1/crates/hex/0.4.3/download -> hex-0.4.3.crate
https://crates.io/api/v1/crates/http/1.4.0/download -> http-1.4.0.crate
https://crates.io/api/v1/crates/httparse/1.10.1/download -> httparse-1.10.1.crate
https://crates.io/api/v1/crates/humantime/2.3.0/download -> humantime-2.3.0.crate
https://crates.io/api/v1/crates/humantime-serde/1.1.1/download -> humantime-serde-1.1.1.crate
https://crates.io/api/v1/crates/hybrid-array/0.4.10/download -> hybrid-array-0.4.10.crate
https://crates.io/api/v1/crates/icu_collections/2.2.0/download -> icu_collections-2.2.0.crate
https://crates.io/api/v1/crates/icu_locale_core/2.2.0/download -> icu_locale_core-2.2.0.crate
https://crates.io/api/v1/crates/icu_normalizer/2.2.0/download -> icu_normalizer-2.2.0.crate
https://crates.io/api/v1/crates/icu_normalizer_data/2.2.0/download -> icu_normalizer_data-2.2.0.crate
https://crates.io/api/v1/crates/icu_properties/2.2.0/download -> icu_properties-2.2.0.crate
https://crates.io/api/v1/crates/icu_properties_data/2.2.0/download -> icu_properties_data-2.2.0.crate
https://crates.io/api/v1/crates/icu_provider/2.2.0/download -> icu_provider-2.2.0.crate
https://crates.io/api/v1/crates/id-arena/2.3.0/download -> id-arena-2.3.0.crate
https://crates.io/api/v1/crates/idna/1.1.0/download -> idna-1.1.0.crate
https://crates.io/api/v1/crates/idna_adapter/1.2.1/download -> idna_adapter-1.2.1.crate
https://crates.io/api/v1/crates/ignore/0.4.25/download -> ignore-0.4.25.crate
https://crates.io/api/v1/crates/indexmap/2.14.0/download -> indexmap-2.14.0.crate
https://crates.io/api/v1/crates/indicatif/0.18.4/download -> indicatif-0.18.4.crate
https://crates.io/api/v1/crates/indoc/2.0.7/download -> indoc-2.0.7.crate
https://crates.io/api/v1/crates/insta/1.47.2/download -> insta-1.47.2.crate
https://crates.io/api/v1/crates/is-terminal/0.4.17/download -> is-terminal-0.4.17.crate
https://crates.io/api/v1/crates/is_terminal_polyfill/1.70.2/download -> is_terminal_polyfill-1.70.2.crate
https://crates.io/api/v1/crates/itertools/0.13.0/download -> itertools-0.13.0.crate
https://crates.io/api/v1/crates/itertools/0.14.0/download -> itertools-0.14.0.crate
https://crates.io/api/v1/crates/itoa/1.0.18/download -> itoa-1.0.18.crate
https://crates.io/api/v1/crates/jni/0.21.1/download -> jni-0.21.1.crate
https://crates.io/api/v1/crates/jni-sys/0.3.1/download -> jni-sys-0.3.1.crate
https://crates.io/api/v1/crates/jni-sys/0.4.1/download -> jni-sys-0.4.1.crate
https://crates.io/api/v1/crates/jni-sys-macros/0.4.1/download -> jni-sys-macros-0.4.1.crate
https://crates.io/api/v1/crates/jobserver/0.1.34/download -> jobserver-0.1.34.crate
https://crates.io/api/v1/crates/js-sys/0.3.95/download -> js-sys-0.3.95.crate
https://crates.io/api/v1/crates/keyring/3.6.3/download -> keyring-3.6.3.crate
https://crates.io/api/v1/crates/lazy_static/1.5.0/download -> lazy_static-1.5.0.crate
https://crates.io/api/v1/crates/lddtree/0.5.0/download -> lddtree-0.5.0.crate
https://crates.io/api/v1/crates/leb128fmt/0.1.0/download -> leb128fmt-0.1.0.crate
https://crates.io/api/v1/crates/libbz2-rs-sys/0.2.3/download -> libbz2-rs-sys-0.2.3.crate
https://crates.io/api/v1/crates/libc/0.2.185/download -> libc-0.2.185.crate
https://crates.io/api/v1/crates/libmimalloc-sys/0.1.46/download -> libmimalloc-sys-0.1.46.crate
https://crates.io/api/v1/crates/libredox/0.1.16/download -> libredox-0.1.16.crate
https://crates.io/api/v1/crates/linux-keyutils/0.2.5/download -> linux-keyutils-0.2.5.crate
https://crates.io/api/v1/crates/linux-raw-sys/0.12.1/download -> linux-raw-sys-0.12.1.crate
https://crates.io/api/v1/crates/litemap/0.8.2/download -> litemap-0.8.2.crate
https://crates.io/api/v1/crates/litrs/1.0.0/download -> litrs-1.0.0.crate
https://crates.io/api/v1/crates/lock_api/0.4.14/download -> lock_api-0.4.14.crate
https://crates.io/api/v1/crates/log/0.4.29/download -> log-0.4.29.crate
https://crates.io/api/v1/crates/lzma-rust2/0.16.2/download -> lzma-rust2-0.16.2.crate
https://crates.io/api/v1/crates/lzma-sys/0.1.20/download -> lzma-sys-0.1.20.crate
https://crates.io/api/v1/crates/lzxd/0.2.6/download -> lzxd-0.2.6.crate
https://crates.io/api/v1/crates/mailparse/0.16.1/download -> mailparse-0.16.1.crate
https://crates.io/api/v1/crates/matchers/0.2.0/download -> matchers-0.2.0.crate
https://crates.io/api/v1/crates/memchr/2.8.0/download -> memchr-2.8.0.crate
https://crates.io/api/v1/crates/memmap2/0.9.10/download -> memmap2-0.9.10.crate
https://crates.io/api/v1/crates/memo-map/0.3.3/download -> memo-map-0.3.3.crate
https://crates.io/api/v1/crates/mimalloc/0.1.49/download -> mimalloc-0.1.49.crate
https://crates.io/api/v1/crates/mime/0.3.17/download -> mime-0.3.17.crate
https://crates.io/api/v1/crates/mime_guess/2.0.5/download -> mime_guess-2.0.5.crate
https://crates.io/api/v1/crates/minijinja/2.19.0/download -> minijinja-2.19.0.crate
https://crates.io/api/v1/crates/miniz_oxide/0.8.9/download -> miniz_oxide-0.8.9.crate
https://crates.io/api/v1/crates/msi/0.10.0/download -> msi-0.10.0.crate
https://crates.io/api/v1/crates/native-tls/0.2.18/download -> native-tls-0.2.18.crate
https://crates.io/api/v1/crates/nix/0.31.2/download -> nix-0.31.2.crate
https://crates.io/api/v1/crates/nom/8.0.0/download -> nom-8.0.0.crate
https://crates.io/api/v1/crates/normalize-line-endings/0.3.0/download -> normalize-line-endings-0.3.0.crate
https://crates.io/api/v1/crates/normpath/1.5.0/download -> normpath-1.5.0.crate
https://crates.io/api/v1/crates/nu-ansi-term/0.50.3/download -> nu-ansi-term-0.50.3.crate
https://crates.io/api/v1/crates/num-conv/0.2.1/download -> num-conv-0.2.1.crate
https://crates.io/api/v1/crates/num-traits/0.2.19/download -> num-traits-0.2.19.crate
https://crates.io/api/v1/crates/object/0.37.3/download -> object-0.37.3.crate
https://crates.io/api/v1/crates/object/0.38.1/download -> object-0.38.1.crate
https://crates.io/api/v1/crates/once_cell/1.21.4/download -> once_cell-1.21.4.crate
https://crates.io/api/v1/crates/once_cell_polyfill/1.70.2/download -> once_cell_polyfill-1.70.2.crate
https://crates.io/api/v1/crates/openssl/0.10.80/download -> openssl-0.10.80.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-probe/0.2.1/download -> openssl-probe-0.2.1.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.116/download -> openssl-sys-0.9.116.crate
https://crates.io/api/v1/crates/option-ext/0.2.0/download -> option-ext-0.2.0.crate
https://crates.io/api/v1/crates/ordered-float/5.3.0/download -> ordered-float-5.3.0.crate
https://crates.io/api/v1/crates/os_pipe/1.2.3/download -> os_pipe-1.2.3.crate
https://crates.io/api/v1/crates/parking_lot/0.12.5/download -> parking_lot-0.12.5.crate
https://crates.io/api/v1/crates/parking_lot_core/0.9.12/download -> parking_lot_core-0.9.12.crate
https://crates.io/api/v1/crates/paste/1.0.15/download -> paste-1.0.15.crate
https://crates.io/api/v1/crates/path-slash/0.2.1/download -> path-slash-0.2.1.crate
https://crates.io/api/v1/crates/pathdiff/0.2.3/download -> pathdiff-0.2.3.crate
https://crates.io/api/v1/crates/pem-rfc7468/1.0.0/download -> pem-rfc7468-1.0.0.crate
https://crates.io/api/v1/crates/pep440_rs/0.7.3/download -> pep440_rs-0.7.3.crate
https://crates.io/api/v1/crates/pep508_rs/0.9.2/download -> pep508_rs-0.9.2.crate
https://crates.io/api/v1/crates/percent-encoding/2.3.2/download -> percent-encoding-2.3.2.crate
https://crates.io/api/v1/crates/phf/0.11.3/download -> phf-0.11.3.crate
https://crates.io/api/v1/crates/phf_generator/0.11.3/download -> phf_generator-0.11.3.crate
https://crates.io/api/v1/crates/phf_macros/0.11.3/download -> phf_macros-0.11.3.crate
https://crates.io/api/v1/crates/phf_shared/0.11.3/download -> phf_shared-0.11.3.crate
https://crates.io/api/v1/crates/pin-project-lite/0.2.17/download -> pin-project-lite-0.2.17.crate
https://crates.io/api/v1/crates/pkg-config/0.3.33/download -> pkg-config-0.3.33.crate
https://crates.io/api/v1/crates/plain/0.2.3/download -> plain-0.2.3.crate
https://crates.io/api/v1/crates/platform-info/2.1.0/download -> platform-info-2.1.0.crate
https://crates.io/api/v1/crates/portable-atomic/1.13.1/download -> portable-atomic-1.13.1.crate
https://crates.io/api/v1/crates/potential_utf/0.1.5/download -> potential_utf-0.1.5.crate
https://crates.io/api/v1/crates/powerfmt/0.2.0/download -> powerfmt-0.2.0.crate
https://crates.io/api/v1/crates/pretty_assertions/1.4.1/download -> pretty_assertions-1.4.1.crate
https://crates.io/api/v1/crates/prettyplease/0.2.37/download -> prettyplease-0.2.37.crate
https://crates.io/api/v1/crates/proc-macro-crate/3.5.0/download -> proc-macro-crate-3.5.0.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.106/download -> proc-macro2-1.0.106.crate
https://crates.io/api/v1/crates/psm/0.1.30/download -> psm-0.1.30.crate
https://crates.io/api/v1/crates/purl/0.1.6/download -> purl-0.1.6.crate
https://crates.io/api/v1/crates/pyo3-introspection/0.29.0/download -> pyo3-introspection-0.29.0.crate
https://crates.io/api/v1/crates/pyproject-toml/0.13.7/download -> pyproject-toml-0.13.7.crate
https://crates.io/api/v1/crates/python-pkginfo/0.6.8/download -> python-pkginfo-0.6.8.crate
https://crates.io/api/v1/crates/quote/1.0.45/download -> quote-1.0.45.crate
https://crates.io/api/v1/crates/quoted_printable/0.5.2/download -> quoted_printable-0.5.2.crate
https://crates.io/api/v1/crates/r-efi/5.3.0/download -> r-efi-5.3.0.crate
https://crates.io/api/v1/crates/r-efi/6.0.0/download -> r-efi-6.0.0.crate
https://crates.io/api/v1/crates/rand/0.8.6/download -> rand-0.8.6.crate
https://crates.io/api/v1/crates/rand_core/0.6.4/download -> rand_core-0.6.4.crate
https://crates.io/api/v1/crates/rayon/1.12.0/download -> rayon-1.12.0.crate
https://crates.io/api/v1/crates/rayon-core/1.13.0/download -> rayon-core-1.13.0.crate
https://crates.io/api/v1/crates/redox_syscall/0.5.18/download -> redox_syscall-0.5.18.crate
https://crates.io/api/v1/crates/redox_syscall/0.7.4/download -> redox_syscall-0.7.4.crate
https://crates.io/api/v1/crates/redox_users/0.5.2/download -> redox_users-0.5.2.crate
https://crates.io/api/v1/crates/ref-cast/1.0.25/download -> ref-cast-1.0.25.crate
https://crates.io/api/v1/crates/ref-cast-impl/1.0.25/download -> ref-cast-impl-1.0.25.crate
https://crates.io/api/v1/crates/reflink-copy/0.1.29/download -> reflink-copy-0.1.29.crate
https://crates.io/api/v1/crates/regex/1.12.3/download -> regex-1.12.3.crate
https://crates.io/api/v1/crates/regex-automata/0.3.9/download -> regex-automata-0.3.9.crate
https://crates.io/api/v1/crates/regex-automata/0.4.14/download -> regex-automata-0.4.14.crate
https://crates.io/api/v1/crates/regex-syntax/0.7.5/download -> regex-syntax-0.7.5.crate
https://crates.io/api/v1/crates/regex-syntax/0.8.10/download -> regex-syntax-0.8.10.crate
https://crates.io/api/v1/crates/relative-path/1.9.3/download -> relative-path-1.9.3.crate
https://crates.io/api/v1/crates/rfc2047-decoder/1.1.0/download -> rfc2047-decoder-1.1.0.crate
https://crates.io/api/v1/crates/ring/0.17.14/download -> ring-0.17.14.crate
https://crates.io/api/v1/crates/rstest/0.26.1/download -> rstest-0.26.1.crate
https://crates.io/api/v1/crates/rstest_macros/0.26.1/download -> rstest_macros-0.26.1.crate
https://crates.io/api/v1/crates/rustc-hash/2.1.2/download -> rustc-hash-2.1.2.crate
https://crates.io/api/v1/crates/rustc_version/0.4.1/download -> rustc_version-0.4.1.crate
https://crates.io/api/v1/crates/rustflags/0.1.7/download -> rustflags-0.1.7.crate
https://crates.io/api/v1/crates/rustix/1.1.4/download -> rustix-1.1.4.crate
https://crates.io/api/v1/crates/rustls/0.23.38/download -> rustls-0.23.38.crate
https://crates.io/api/v1/crates/rustls-native-certs/0.8.3/download -> rustls-native-certs-0.8.3.crate
https://crates.io/api/v1/crates/rustls-pki-types/1.14.0/download -> rustls-pki-types-1.14.0.crate
https://crates.io/api/v1/crates/rustls-platform-verifier/0.6.2/download -> rustls-platform-verifier-0.6.2.crate
https://crates.io/api/v1/crates/rustls-platform-verifier-android/0.1.1/download -> rustls-platform-verifier-android-0.1.1.crate
https://crates.io/api/v1/crates/rustls-webpki/0.103.13/download -> rustls-webpki-0.103.13.crate
https://crates.io/api/v1/crates/rustversion/1.0.22/download -> rustversion-1.0.22.crate
https://crates.io/api/v1/crates/ruzstd/0.8.2/download -> ruzstd-0.8.2.crate
https://crates.io/api/v1/crates/same-file/1.0.6/download -> same-file-1.0.6.crate
https://crates.io/api/v1/crates/scc/2.4.0/download -> scc-2.4.0.crate
https://crates.io/api/v1/crates/schannel/0.1.29/download -> schannel-0.1.29.crate
https://crates.io/api/v1/crates/schemars/1.2.1/download -> schemars-1.2.1.crate
https://crates.io/api/v1/crates/schemars_derive/1.2.1/download -> schemars_derive-1.2.1.crate
https://crates.io/api/v1/crates/scopeguard/1.2.0/download -> scopeguard-1.2.0.crate
https://crates.io/api/v1/crates/scroll/0.13.0/download -> scroll-0.13.0.crate
https://crates.io/api/v1/crates/scroll_derive/0.13.1/download -> scroll_derive-0.13.1.crate
https://crates.io/api/v1/crates/sdd/3.0.10/download -> sdd-3.0.10.crate
https://crates.io/api/v1/crates/security-framework/2.11.1/download -> security-framework-2.11.1.crate
https://crates.io/api/v1/crates/security-framework/3.7.0/download -> security-framework-3.7.0.crate
https://crates.io/api/v1/crates/security-framework-sys/2.17.0/download -> security-framework-sys-2.17.0.crate
https://crates.io/api/v1/crates/semver/1.0.28/download -> semver-1.0.28.crate
https://crates.io/api/v1/crates/serde/1.0.228/download -> serde-1.0.228.crate
https://crates.io/api/v1/crates/serde_core/1.0.228/download -> serde_core-1.0.228.crate
https://crates.io/api/v1/crates/serde_derive/1.0.228/download -> serde_derive-1.0.228.crate
https://crates.io/api/v1/crates/serde_derive_internals/0.29.1/download -> serde_derive_internals-0.29.1.crate
https://crates.io/api/v1/crates/serde_json/1.0.149/download -> serde_json-1.0.149.crate
https://crates.io/api/v1/crates/serde_spanned/0.6.9/download -> serde_spanned-0.6.9.crate
https://crates.io/api/v1/crates/serde_spanned/1.1.1/download -> serde_spanned-1.1.1.crate
https://crates.io/api/v1/crates/serial_test/3.4.0/download -> serial_test-3.4.0.crate
https://crates.io/api/v1/crates/serial_test_derive/3.4.0/download -> serial_test_derive-3.4.0.crate
https://crates.io/api/v1/crates/sha2/0.10.9/download -> sha2-0.10.9.crate
https://crates.io/api/v1/crates/sha2/0.11.0/download -> sha2-0.11.0.crate
https://crates.io/api/v1/crates/sharded-slab/0.1.7/download -> sharded-slab-0.1.7.crate
https://crates.io/api/v1/crates/shell-words/1.1.1/download -> shell-words-1.1.1.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/simd-adler32/0.3.9/download -> simd-adler32-0.3.9.crate
https://crates.io/api/v1/crates/similar/2.7.0/download -> similar-2.7.0.crate
https://crates.io/api/v1/crates/siphasher/1.0.2/download -> siphasher-1.0.2.crate
https://crates.io/api/v1/crates/slab/0.4.12/download -> slab-0.4.12.crate
https://crates.io/api/v1/crates/smallvec/1.15.1/download -> smallvec-1.15.1.crate
https://crates.io/api/v1/crates/smawk/0.3.2/download -> smawk-0.3.2.crate
https://crates.io/api/v1/crates/snapbox/1.2.1/download -> snapbox-1.2.1.crate
https://crates.io/api/v1/crates/snapbox-macros/1.1.0/download -> snapbox-macros-1.1.0.crate
https://crates.io/api/v1/crates/socks/0.3.4/download -> socks-0.3.4.crate
https://crates.io/api/v1/crates/spdx/0.13.4/download -> spdx-0.13.4.crate
https://crates.io/api/v1/crates/stable_deref_trait/1.2.1/download -> stable_deref_trait-1.2.1.crate
https://crates.io/api/v1/crates/stacker/0.1.23/download -> stacker-0.1.23.crate
https://crates.io/api/v1/crates/strsim/0.11.1/download -> strsim-0.11.1.crate
https://crates.io/api/v1/crates/strum/0.28.0/download -> strum-0.28.0.crate
https://crates.io/api/v1/crates/strum_macros/0.28.0/download -> strum_macros-0.28.0.crate
https://crates.io/api/v1/crates/subtle/2.6.1/download -> subtle-2.6.1.crate
https://crates.io/api/v1/crates/syn/2.0.117/download -> syn-2.0.117.crate
https://crates.io/api/v1/crates/synstructure/0.13.2/download -> synstructure-0.13.2.crate
https://crates.io/api/v1/crates/tar/0.4.46/download -> tar-0.4.46.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.5/download -> target-lexicon-0.13.5.crate
https://crates.io/api/v1/crates/tempfile/3.27.0/download -> tempfile-3.27.0.crate
https://crates.io/api/v1/crates/termcolor/1.4.1/download -> termcolor-1.4.1.crate
https://crates.io/api/v1/crates/terminal_size/0.4.4/download -> terminal_size-0.4.4.crate
https://crates.io/api/v1/crates/textwrap/0.16.2/download -> textwrap-0.16.2.crate
https://crates.io/api/v1/crates/thiserror/1.0.69/download -> thiserror-1.0.69.crate
https://crates.io/api/v1/crates/thiserror/2.0.18/download -> thiserror-2.0.18.crate
https://crates.io/api/v1/crates/thiserror-impl/1.0.69/download -> thiserror-impl-1.0.69.crate
https://crates.io/api/v1/crates/thiserror-impl/2.0.18/download -> thiserror-impl-2.0.18.crate
https://crates.io/api/v1/crates/thread_local/1.1.9/download -> thread_local-1.1.9.crate
https://crates.io/api/v1/crates/time/0.3.47/download -> time-0.3.47.crate
https://crates.io/api/v1/crates/time-core/0.1.8/download -> time-core-0.1.8.crate
https://crates.io/api/v1/crates/time-macros/0.2.27/download -> time-macros-0.2.27.crate
https://crates.io/api/v1/crates/tinystr/0.8.3/download -> tinystr-0.8.3.crate
https://crates.io/api/v1/crates/toml/0.8.23/download -> toml-0.8.23.crate
https://crates.io/api/v1/crates/toml/0.9.12+spec-1.1.0/download -> toml-0.9.12+spec-1.1.0.crate
https://crates.io/api/v1/crates/toml/1.1.2+spec-1.1.0/download -> toml-1.1.2+spec-1.1.0.crate
https://crates.io/api/v1/crates/toml_datetime/0.6.11/download -> toml_datetime-0.6.11.crate
https://crates.io/api/v1/crates/toml_datetime/0.7.5+spec-1.1.0/download -> toml_datetime-0.7.5+spec-1.1.0.crate
https://crates.io/api/v1/crates/toml_datetime/1.1.1+spec-1.1.0/download -> toml_datetime-1.1.1+spec-1.1.0.crate
https://crates.io/api/v1/crates/toml_edit/0.22.27/download -> toml_edit-0.22.27.crate
https://crates.io/api/v1/crates/toml_edit/0.25.11+spec-1.1.0/download -> toml_edit-0.25.11+spec-1.1.0.crate
https://crates.io/api/v1/crates/toml_parser/1.1.2+spec-1.1.0/download -> toml_parser-1.1.2+spec-1.1.0.crate
https://crates.io/api/v1/crates/toml_write/0.1.2/download -> toml_write-0.1.2.crate
https://crates.io/api/v1/crates/toml_writer/1.1.1+spec-1.1.0/download -> toml_writer-1.1.1+spec-1.1.0.crate
https://crates.io/api/v1/crates/tracing/0.1.44/download -> tracing-0.1.44.crate
https://crates.io/api/v1/crates/tracing-attributes/0.1.31/download -> tracing-attributes-0.1.31.crate
https://crates.io/api/v1/crates/tracing-core/0.1.36/download -> tracing-core-0.1.36.crate
https://crates.io/api/v1/crates/tracing-log/0.2.0/download -> tracing-log-0.2.0.crate
https://crates.io/api/v1/crates/tracing-serde/0.2.0/download -> tracing-serde-0.2.0.crate
https://crates.io/api/v1/crates/tracing-subscriber/0.3.23/download -> tracing-subscriber-0.3.23.crate
https://crates.io/api/v1/crates/trycmd/1.2.0/download -> trycmd-1.2.0.crate
https://crates.io/api/v1/crates/twox-hash/2.1.2/download -> twox-hash-2.1.2.crate
https://crates.io/api/v1/crates/typed-path/0.12.3/download -> typed-path-0.12.3.crate
https://crates.io/api/v1/crates/typenum/1.20.0/download -> typenum-1.20.0.crate
https://crates.io/api/v1/crates/unicase/2.9.0/download -> unicase-2.9.0.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.24/download -> unicode-ident-1.0.24.crate
https://crates.io/api/v1/crates/unicode-linebreak/0.1.5/download -> unicode-linebreak-0.1.5.crate
https://crates.io/api/v1/crates/unicode-segmentation/1.13.2/download -> unicode-segmentation-1.13.2.crate
https://crates.io/api/v1/crates/unicode-width/0.2.2/download -> unicode-width-0.2.2.crate
https://crates.io/api/v1/crates/unicode-xid/0.2.6/download -> unicode-xid-0.2.6.crate
https://crates.io/api/v1/crates/unit-prefix/0.5.2/download -> unit-prefix-0.5.2.crate
https://crates.io/api/v1/crates/unscanny/0.1.0/download -> unscanny-0.1.0.crate
https://crates.io/api/v1/crates/untrusted/0.9.0/download -> untrusted-0.9.0.crate
https://crates.io/api/v1/crates/ureq/3.3.0/download -> ureq-3.3.0.crate
https://crates.io/api/v1/crates/ureq-proto/0.6.0/download -> ureq-proto-0.6.0.crate
https://crates.io/api/v1/crates/url/2.5.8/download -> url-2.5.8.crate
https://crates.io/api/v1/crates/urlencoding/2.1.3/download -> urlencoding-2.1.3.crate
https://crates.io/api/v1/crates/utf8-zero/0.8.1/download -> utf8-zero-0.8.1.crate
https://crates.io/api/v1/crates/utf8_iter/1.0.4/download -> utf8_iter-1.0.4.crate
https://crates.io/api/v1/crates/utf8parse/0.2.2/download -> utf8parse-0.2.2.crate
https://crates.io/api/v1/crates/uuid/1.23.1/download -> uuid-1.23.1.crate
https://crates.io/api/v1/crates/validator/0.19.0/download -> validator-0.19.0.crate
https://crates.io/api/v1/crates/valuable/0.1.1/download -> valuable-0.1.1.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://crates.io/api/v1/crates/version-ranges/0.1.3/download -> version-ranges-0.1.3.crate
https://crates.io/api/v1/crates/version_check/0.9.5/download -> version_check-0.9.5.crate
https://crates.io/api/v1/crates/versions/7.0.0/download -> versions-7.0.0.crate
https://crates.io/api/v1/crates/wait-timeout/0.2.1/download -> wait-timeout-0.2.1.crate
https://crates.io/api/v1/crates/walkdir/2.5.0/download -> walkdir-2.5.0.crate
https://crates.io/api/v1/crates/wasi/0.11.1+wasi-snapshot-preview1/download -> wasi-0.11.1+wasi-snapshot-preview1.crate
https://crates.io/api/v1/crates/wasip2/1.0.3+wasi-0.2.9/download -> wasip2-1.0.3+wasi-0.2.9.crate
https://crates.io/api/v1/crates/wasip3/0.4.0+wasi-0.3.0-rc-2026-01-06/download -> wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06.crate
https://crates.io/api/v1/crates/wasm-bindgen/0.2.118/download -> wasm-bindgen-0.2.118.crate
https://crates.io/api/v1/crates/wasm-bindgen-macro/0.2.118/download -> wasm-bindgen-macro-0.2.118.crate
https://crates.io/api/v1/crates/wasm-bindgen-macro-support/0.2.118/download -> wasm-bindgen-macro-support-0.2.118.crate
https://crates.io/api/v1/crates/wasm-bindgen-shared/0.2.118/download -> wasm-bindgen-shared-0.2.118.crate
https://crates.io/api/v1/crates/wasm-encoder/0.244.0/download -> wasm-encoder-0.244.0.crate
https://crates.io/api/v1/crates/wasm-metadata/0.244.0/download -> wasm-metadata-0.244.0.crate
https://crates.io/api/v1/crates/wasmparser/0.244.0/download -> wasmparser-0.244.0.crate
https://crates.io/api/v1/crates/web-time/1.1.0/download -> web-time-1.1.0.crate
https://crates.io/api/v1/crates/webpki-root-certs/1.0.7/download -> webpki-root-certs-1.0.7.crate
https://crates.io/api/v1/crates/webpki-roots/1.0.7/download -> webpki-roots-1.0.7.crate
https://crates.io/api/v1/crates/which/8.0.2/download -> which-8.0.2.crate
https://crates.io/api/v1/crates/wild/2.2.1/download -> wild-2.2.1.crate
https://crates.io/api/v1/crates/winapi/0.3.9/download -> winapi-0.3.9.crate
https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download -> winapi-i686-pc-windows-gnu-0.4.0.crate
https://crates.io/api/v1/crates/winapi-util/0.1.11/download -> winapi-util-0.1.11.crate
https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download -> winapi-x86_64-pc-windows-gnu-0.4.0.crate
https://crates.io/api/v1/crates/windows/0.62.2/download -> windows-0.62.2.crate
https://crates.io/api/v1/crates/windows-collections/0.3.2/download -> windows-collections-0.3.2.crate
https://crates.io/api/v1/crates/windows-core/0.62.2/download -> windows-core-0.62.2.crate
https://crates.io/api/v1/crates/windows-future/0.3.2/download -> windows-future-0.3.2.crate
https://crates.io/api/v1/crates/windows-implement/0.60.2/download -> windows-implement-0.60.2.crate
https://crates.io/api/v1/crates/windows-interface/0.59.3/download -> windows-interface-0.59.3.crate
https://crates.io/api/v1/crates/windows-link/0.2.1/download -> windows-link-0.2.1.crate
https://crates.io/api/v1/crates/windows-numerics/0.3.1/download -> windows-numerics-0.3.1.crate
https://crates.io/api/v1/crates/windows-result/0.4.1/download -> windows-result-0.4.1.crate
https://crates.io/api/v1/crates/windows-strings/0.5.1/download -> windows-strings-0.5.1.crate
https://crates.io/api/v1/crates/windows-sys/0.45.0/download -> windows-sys-0.45.0.crate
https://crates.io/api/v1/crates/windows-sys/0.52.0/download -> windows-sys-0.52.0.crate
https://crates.io/api/v1/crates/windows-sys/0.59.0/download -> windows-sys-0.59.0.crate
https://crates.io/api/v1/crates/windows-sys/0.60.2/download -> windows-sys-0.60.2.crate
https://crates.io/api/v1/crates/windows-sys/0.61.2/download -> windows-sys-0.61.2.crate
https://crates.io/api/v1/crates/windows-targets/0.42.2/download -> windows-targets-0.42.2.crate
https://crates.io/api/v1/crates/windows-targets/0.52.6/download -> windows-targets-0.52.6.crate
https://crates.io/api/v1/crates/windows-targets/0.53.5/download -> windows-targets-0.53.5.crate
https://crates.io/api/v1/crates/windows-threading/0.2.1/download -> windows-threading-0.2.1.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.42.2/download -> windows_aarch64_gnullvm-0.42.2.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.52.6/download -> windows_aarch64_gnullvm-0.52.6.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.53.1/download -> windows_aarch64_gnullvm-0.53.1.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.42.2/download -> windows_aarch64_msvc-0.42.2.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.52.6/download -> windows_aarch64_msvc-0.52.6.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.53.1/download -> windows_aarch64_msvc-0.53.1.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.42.2/download -> windows_i686_gnu-0.42.2.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.52.6/download -> windows_i686_gnu-0.52.6.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.53.1/download -> windows_i686_gnu-0.53.1.crate
https://crates.io/api/v1/crates/windows_i686_gnullvm/0.52.6/download -> windows_i686_gnullvm-0.52.6.crate
https://crates.io/api/v1/crates/windows_i686_gnullvm/0.53.1/download -> windows_i686_gnullvm-0.53.1.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.42.2/download -> windows_i686_msvc-0.42.2.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.52.6/download -> windows_i686_msvc-0.52.6.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.53.1/download -> windows_i686_msvc-0.53.1.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.42.2/download -> windows_x86_64_gnu-0.42.2.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.52.6/download -> windows_x86_64_gnu-0.52.6.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.53.1/download -> windows_x86_64_gnu-0.53.1.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.42.2/download -> windows_x86_64_gnullvm-0.42.2.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.52.6/download -> windows_x86_64_gnullvm-0.52.6.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.53.1/download -> windows_x86_64_gnullvm-0.53.1.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.42.2/download -> windows_x86_64_msvc-0.42.2.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.52.6/download -> windows_x86_64_msvc-0.52.6.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.53.1/download -> windows_x86_64_msvc-0.53.1.crate
https://crates.io/api/v1/crates/winnow/0.7.15/download -> winnow-0.7.15.crate
https://crates.io/api/v1/crates/winnow/1.0.1/download -> winnow-1.0.1.crate
https://crates.io/api/v1/crates/wit-bindgen/0.51.0/download -> wit-bindgen-0.51.0.crate
https://crates.io/api/v1/crates/wit-bindgen/0.57.1/download -> wit-bindgen-0.57.1.crate
https://crates.io/api/v1/crates/wit-bindgen-core/0.51.0/download -> wit-bindgen-core-0.51.0.crate
https://crates.io/api/v1/crates/wit-bindgen-rust/0.51.0/download -> wit-bindgen-rust-0.51.0.crate
https://crates.io/api/v1/crates/wit-bindgen-rust-macro/0.51.0/download -> wit-bindgen-rust-macro-0.51.0.crate
https://crates.io/api/v1/crates/wit-component/0.244.0/download -> wit-component-0.244.0.crate
https://crates.io/api/v1/crates/wit-parser/0.244.0/download -> wit-parser-0.244.0.crate
https://crates.io/api/v1/crates/writeable/0.6.3/download -> writeable-0.6.3.crate
https://crates.io/api/v1/crates/xattr/1.6.1/download -> xattr-1.6.1.crate
https://crates.io/api/v1/crates/xml-rs/0.8.28/download -> xml-rs-0.8.28.crate
https://crates.io/api/v1/crates/xwin/0.9.0/download -> xwin-0.9.0.crate
https://crates.io/api/v1/crates/xz2/0.1.7/download -> xz2-0.1.7.crate
https://crates.io/api/v1/crates/yansi/1.0.1/download -> yansi-1.0.1.crate
https://crates.io/api/v1/crates/yoke/0.8.2/download -> yoke-0.8.2.crate
https://crates.io/api/v1/crates/yoke-derive/0.8.2/download -> yoke-derive-0.8.2.crate
https://crates.io/api/v1/crates/zerofrom/0.1.7/download -> zerofrom-0.1.7.crate
https://crates.io/api/v1/crates/zerofrom-derive/0.1.7/download -> zerofrom-derive-0.1.7.crate
https://crates.io/api/v1/crates/zeroize/1.8.2/download -> zeroize-1.8.2.crate
https://crates.io/api/v1/crates/zerotrie/0.2.4/download -> zerotrie-0.2.4.crate
https://crates.io/api/v1/crates/zerovec/0.11.6/download -> zerovec-0.11.6.crate
https://crates.io/api/v1/crates/zerovec-derive/0.11.3/download -> zerovec-derive-0.11.3.crate
https://crates.io/api/v1/crates/zip/7.2.0/download -> zip-7.2.0.crate
https://crates.io/api/v1/crates/zip/8.5.1/download -> zip-8.5.1.crate
https://crates.io/api/v1/crates/zlib-rs/0.6.3/download -> zlib-rs-0.6.3.crate
https://crates.io/api/v1/crates/zmij/1.0.21/download -> zmij-1.0.21.crate
https://crates.io/api/v1/crates/zopfli/0.8.3/download -> zopfli-0.8.3.crate
https://crates.io/api/v1/crates/zstd/0.13.3/download -> zstd-0.13.3.crate
https://crates.io/api/v1/crates/zstd-safe/7.2.4/download -> zstd-safe-7.2.4.crate
https://crates.io/api/v1/crates/zstd-sys/2.0.16+zstd.1.5.7/download -> zstd-sys-2.0.16+zstd.1.5.7.crate
https://files.pythonhosted.org/packages/e7/b3/addd877f871fb1860d46d3a4f206ecb10b946c85846805e6367631926fd3/maturin-1.14.1.tar.gz -> maturin-1.14.1.tar.gz
$(cargo_crate_uris ${CRATES})"

DEPEND="
	dev-python/setuptools-rust[${PYTHON_USEDEP}]
	dev-python/semantic_version[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.14.1"