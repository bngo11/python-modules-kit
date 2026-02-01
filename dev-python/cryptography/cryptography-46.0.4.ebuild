# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CARGO_OPTIONAL="yes"
CRATES="
asn1-0.22.0
asn1_derive-0.22.0
autocfg-1.5.0
base64-0.22.1
bitflags-2.9.4
cc-1.2.37
cfg-if-1.0.3
find-msvc-tools-0.1.1
foreign-types-0.3.2
foreign-types-shared-0.1.1
heck-0.5.0
indoc-2.0.6
itoa-1.0.15
libc-0.2.175
memoffset-0.9.1
once_cell-1.21.3
openssl-0.10.74
openssl-macros-0.1.1
openssl-sys-0.9.110
pem-3.0.5
pkg-config-0.3.32
portable-atomic-1.11.1
proc-macro2-1.0.101
pyo3-0.26.0
pyo3-build-config-0.26.0
pyo3-ffi-0.26.0
pyo3-macros-0.26.0
pyo3-macros-backend-0.26.0
quote-1.0.40
self_cell-1.2.0
shlex-1.3.0
syn-2.0.106
target-lexicon-0.13.3
unicode-ident-1.0.19
unindent-0.2.4
vcpkg-0.2.15
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="None https://pypi.org/project/cryptography/"
SRC_URI="https://crates.io/api/v1/crates/asn1/0.22.0/download -> asn1-0.22.0.crate
https://crates.io/api/v1/crates/asn1_derive/0.22.0/download -> asn1_derive-0.22.0.crate
https://crates.io/api/v1/crates/autocfg/1.5.0/download -> autocfg-1.5.0.crate
https://crates.io/api/v1/crates/base64/0.22.1/download -> base64-0.22.1.crate
https://crates.io/api/v1/crates/bitflags/2.9.4/download -> bitflags-2.9.4.crate
https://crates.io/api/v1/crates/cc/1.2.37/download -> cc-1.2.37.crate
https://crates.io/api/v1/crates/cfg-if/1.0.3/download -> cfg-if-1.0.3.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.1/download -> find-msvc-tools-0.1.1.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/heck/0.5.0/download -> heck-0.5.0.crate
https://crates.io/api/v1/crates/indoc/2.0.6/download -> indoc-2.0.6.crate
https://crates.io/api/v1/crates/itoa/1.0.15/download -> itoa-1.0.15.crate
https://crates.io/api/v1/crates/libc/0.2.175/download -> libc-0.2.175.crate
https://crates.io/api/v1/crates/memoffset/0.9.1/download -> memoffset-0.9.1.crate
https://crates.io/api/v1/crates/once_cell/1.21.3/download -> once_cell-1.21.3.crate
https://crates.io/api/v1/crates/openssl/0.10.74/download -> openssl-0.10.74.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.110/download -> openssl-sys-0.9.110.crate
https://crates.io/api/v1/crates/pem/3.0.5/download -> pem-3.0.5.crate
https://crates.io/api/v1/crates/pkg-config/0.3.32/download -> pkg-config-0.3.32.crate
https://crates.io/api/v1/crates/portable-atomic/1.11.1/download -> portable-atomic-1.11.1.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.101/download -> proc-macro2-1.0.101.crate
https://crates.io/api/v1/crates/pyo3/0.26.0/download -> pyo3-0.26.0.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.26.0/download -> pyo3-build-config-0.26.0.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.26.0/download -> pyo3-ffi-0.26.0.crate
https://crates.io/api/v1/crates/pyo3-macros/0.26.0/download -> pyo3-macros-0.26.0.crate
https://crates.io/api/v1/crates/pyo3-macros-backend/0.26.0/download -> pyo3-macros-backend-0.26.0.crate
https://crates.io/api/v1/crates/quote/1.0.40/download -> quote-1.0.40.crate
https://crates.io/api/v1/crates/self_cell/1.2.0/download -> self_cell-1.2.0.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/syn/2.0.106/download -> syn-2.0.106.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.3/download -> target-lexicon-0.13.3.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.19/download -> unicode-ident-1.0.19.crate
https://crates.io/api/v1/crates/unindent/0.2.4/download -> unindent-0.2.4.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://files.pythonhosted.org/packages/78/19/f748958276519adf6a0c1e79e7b8860b4830dda55ccdf29f2719b5fc499c/cryptography-46.0.4.tar.gz -> cryptography-46.0.4.tar.gz
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
S="${WORKDIR}/cryptography-46.0.4"

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
