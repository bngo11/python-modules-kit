# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS=no
inherit distutils-r1

MY_PN="Cheetah3"
MY_P="${MY_PN}-${PV/_}"

DESCRIPTION="Python-powered template engine and code generator"
HOMEPAGE="http://www.cheetahtemplate.org/ https://pypi.org/project/Cheetah3/"
SRC_URI="https://files.pythonhosted.org/packages/23/33/ace0250068afca106c1df34348ab0728e575dc9c61928d216de3e381c460/Cheetah3-3.2.6.post1.tar.gz"

LICENSE="MIT"
IUSE=""
KEYWORDS="*"
SLOT="0"

RDEPEND="dev-python/markdown[${PYTHON_USEDEP}]
	!dev-python/cheetah
"
BDEPEND="${RDEPEND}"

S="${WORKDIR}/${MY_P}"

DOCS=( ANNOUNCE.rst README.rst TODO )

python_prepare_all() {
	# Disable broken tests.
	sed \
		-e "/Unicode/d" \
		-e "s/if not sys.platform.startswith('java'):/if False:/" \
		-e "/results =/a\\    sys.exit(not results.wasSuccessful())" \
		-i Cheetah/Tests/Test.py || die "sed failed"

	distutils-r1_python_prepare_all
}

python_test() {
	cp -r "${S}/Cheetah/Tests/ImportHooksTemplates" \
		"${BUILD_DIR}/lib/Cheetah/Tests/ImportHooksTemplates" || die

	"${EPYTHON}" Cheetah/Tests/Test.py || die "Tests fail with ${EPYTHON}"
}