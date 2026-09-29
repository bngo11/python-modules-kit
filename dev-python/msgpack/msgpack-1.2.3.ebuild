# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="MessagePack serializer"
HOMEPAGE="None https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/0a/e7/bb605a7bab2d8425a64b3fa762b39dc1bf1c7e3f11ba6fb5413d6db0ff8c/msgpack-1.2.3.tar.gz -> msgpack-1.2.3.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/msgpack-compat )"
IUSE="native-extensions python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/msgpack-1.2.3"

python_prepare_all() {
	# Remove pre-generated cython files
	rm msgpack/{_packer,_unpacker,_cmsgpack}.pyx || die

	if ! use native-extensions ; then
		sed -i -e "/have_cython/s:True:False:" setup.py || die
	fi
	distutils-r1_python_prepare_all
}
