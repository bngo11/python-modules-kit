# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CARGO_OPTIONAL="yes"
CRATES="
asn1-0.24.1
asn1_derive-0.24.1
base64-0.22.1
bitflags-2.11.1
cc-1.2.60
cfg-if-1.0.4
find-msvc-tools-0.1.9
foreign-types-0.3.2
foreign-types-shared-0.1.1
heck-0.5.0
itoa-1.0.18
libc-0.2.186
once_cell-1.21.4
openssl-0.10.78
openssl-macros-0.1.1
openssl-sys-0.9.114
pem-3.0.6
pkg-config-0.3.33
portable-atomic-1.13.1
proc-macro2-1.0.106
pyo3-0.28.3
pyo3-build-config-0.28.3
pyo3-ffi-0.28.3
pyo3-macros-0.28.3
pyo3-macros-backend-0.28.3
quote-1.0.45
self_cell-1.2.2
shlex-1.3.0
syn-2.0.117
target-lexicon-0.13.5
unicode-ident-1.0.24
vcpkg-0.2.15
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="None https://pypi.org/project/cryptography/"
SRC_URI="https://crates.io/api/v1/crates/asn1/0.24.1/download -> asn1-0.24.1.crate
https://crates.io/api/v1/crates/asn1_derive/0.24.1/download -> asn1_derive-0.24.1.crate
https://crates.io/api/v1/crates/base64/0.22.1/download -> base64-0.22.1.crate
https://crates.io/api/v1/crates/bitflags/2.11.1/download -> bitflags-2.11.1.crate
https://crates.io/api/v1/crates/cc/1.2.60/download -> cc-1.2.60.crate
https://crates.io/api/v1/crates/cfg-if/1.0.4/download -> cfg-if-1.0.4.crate
https://crates.io/api/v1/crates/find-msvc-tools/0.1.9/download -> find-msvc-tools-0.1.9.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/heck/0.5.0/download -> heck-0.5.0.crate
https://crates.io/api/v1/crates/itoa/1.0.18/download -> itoa-1.0.18.crate
https://crates.io/api/v1/crates/libc/0.2.186/download -> libc-0.2.186.crate
https://crates.io/api/v1/crates/once_cell/1.21.4/download -> once_cell-1.21.4.crate
https://crates.io/api/v1/crates/openssl/0.10.78/download -> openssl-0.10.78.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.114/download -> openssl-sys-0.9.114.crate
https://crates.io/api/v1/crates/pem/3.0.6/download -> pem-3.0.6.crate
https://crates.io/api/v1/crates/pkg-config/0.3.33/download -> pkg-config-0.3.33.crate
https://crates.io/api/v1/crates/portable-atomic/1.13.1/download -> portable-atomic-1.13.1.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.106/download -> proc-macro2-1.0.106.crate
https://crates.io/api/v1/crates/pyo3/0.28.3/download -> pyo3-0.28.3.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.28.3/download -> pyo3-build-config-0.28.3.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.28.3/download -> pyo3-ffi-0.28.3.crate
https://crates.io/api/v1/crates/pyo3-macros/0.28.3/download -> pyo3-macros-0.28.3.crate
https://crates.io/api/v1/crates/pyo3-macros-backend/0.28.3/download -> pyo3-macros-backend-0.28.3.crate
https://crates.io/api/v1/crates/quote/1.0.45/download -> quote-1.0.45.crate
https://crates.io/api/v1/crates/self_cell/1.2.2/download -> self_cell-1.2.2.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/syn/2.0.117/download -> syn-2.0.117.crate
https://crates.io/api/v1/crates/target-lexicon/0.13.5/download -> target-lexicon-0.13.5.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.24/download -> unicode-ident-1.0.24.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://files.pythonhosted.org/packages/ef/b2/7ffa7fe8207a8c42147ffe70c3e360b228160c1d85dc3faff16aaa3244c0/cryptography-47.0.0.tar.gz -> cryptography-47.0.0.tar.gz
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
S="${WORKDIR}/cryptography-47.0.0"

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
