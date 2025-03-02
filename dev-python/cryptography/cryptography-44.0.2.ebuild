# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CARGO_OPTIONAL="yes"
CRATES="
asn1-0.20.0
asn1_derive-0.20.0
autocfg-1.4.0
base64-0.22.1
bitflags-2.6.0
cc-1.2.1
cfg-if-1.0.0
foreign-types-0.3.2
foreign-types-shared-0.1.1
heck-0.5.0
indoc-2.0.5
itoa-1.0.14
libc-0.2.166
memoffset-0.9.1
once_cell-1.20.2
openssl-0.10.68
openssl-macros-0.1.1
openssl-sys-0.9.104
pem-3.0.4
pkg-config-0.3.31
portable-atomic-1.10.0
proc-macro2-1.0.92
pyo3-0.23.5
pyo3-build-config-0.23.5
pyo3-ffi-0.23.5
pyo3-macros-0.23.5
pyo3-macros-backend-0.23.5
quote-1.0.37
self_cell-1.0.4
shlex-1.3.0
syn-2.0.89
target-lexicon-0.12.16
unicode-ident-1.0.14
unindent-0.2.3
vcpkg-0.2.15
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="None https://pypi.org/project/cryptography/"
SRC_URI="https://crates.io/api/v1/crates/asn1/0.20.0/download -> asn1-0.20.0.crate
https://crates.io/api/v1/crates/asn1_derive/0.20.0/download -> asn1_derive-0.20.0.crate
https://crates.io/api/v1/crates/autocfg/1.4.0/download -> autocfg-1.4.0.crate
https://crates.io/api/v1/crates/base64/0.22.1/download -> base64-0.22.1.crate
https://crates.io/api/v1/crates/bitflags/2.6.0/download -> bitflags-2.6.0.crate
https://crates.io/api/v1/crates/cc/1.2.1/download -> cc-1.2.1.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/heck/0.5.0/download -> heck-0.5.0.crate
https://crates.io/api/v1/crates/indoc/2.0.5/download -> indoc-2.0.5.crate
https://crates.io/api/v1/crates/itoa/1.0.14/download -> itoa-1.0.14.crate
https://crates.io/api/v1/crates/libc/0.2.166/download -> libc-0.2.166.crate
https://crates.io/api/v1/crates/memoffset/0.9.1/download -> memoffset-0.9.1.crate
https://crates.io/api/v1/crates/once_cell/1.20.2/download -> once_cell-1.20.2.crate
https://crates.io/api/v1/crates/openssl/0.10.68/download -> openssl-0.10.68.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.104/download -> openssl-sys-0.9.104.crate
https://crates.io/api/v1/crates/pem/3.0.4/download -> pem-3.0.4.crate
https://crates.io/api/v1/crates/pkg-config/0.3.31/download -> pkg-config-0.3.31.crate
https://crates.io/api/v1/crates/portable-atomic/1.10.0/download -> portable-atomic-1.10.0.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.92/download -> proc-macro2-1.0.92.crate
https://crates.io/api/v1/crates/pyo3/0.23.5/download -> pyo3-0.23.5.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.23.5/download -> pyo3-build-config-0.23.5.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.23.5/download -> pyo3-ffi-0.23.5.crate
https://crates.io/api/v1/crates/pyo3-macros/0.23.5/download -> pyo3-macros-0.23.5.crate
https://crates.io/api/v1/crates/pyo3-macros-backend/0.23.5/download -> pyo3-macros-backend-0.23.5.crate
https://crates.io/api/v1/crates/quote/1.0.37/download -> quote-1.0.37.crate
https://crates.io/api/v1/crates/self_cell/1.0.4/download -> self_cell-1.0.4.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/syn/2.0.89/download -> syn-2.0.89.crate
https://crates.io/api/v1/crates/target-lexicon/0.12.16/download -> target-lexicon-0.12.16.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.14/download -> unicode-ident-1.0.14.crate
https://crates.io/api/v1/crates/unindent/0.2.3/download -> unindent-0.2.3.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://files.pythonhosted.org/packages/cd/25/4ce80c78963834b8a9fd1cc1266be5ed8d1840785c0f2e1b73b8d128d505/cryptography-44.0.2.tar.gz -> cryptography-44.0.2.tar.gz
$(cargo_crate_uris ${CRATES})"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )
	!x86? ( >=virtual/rust-1.37.0 )
	x86? (
		cpu_flags_x86_sse2? (
			>=virtual/rust-1.37.0
		)
	)
	$(python_gen_cond_dep '>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}] >=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	python_targets_python2_7? ( dev-python/cryptography-compat )
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )"
IUSE="cpu_flags_x86_sse2 idna libressl python_targets_python2_7"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD )"
KEYWORDS="*"
S="${WORKDIR}/cryptography-44.0.2"

pkg_setup() {
	use x86 && ! use cpu_flags_x86_sse2 && export CRYPTOGRAPHY_DONT_BUILD_RUST=1
}
src_unpack() {
	if [[ ${CRYPTOGRAPHY_DONT_BUILD_RUST} ]] || [ "$PN"  == 'cryptography-compat' ] ; then
		default
	else
		cargo_src_unpack
	fi
}
