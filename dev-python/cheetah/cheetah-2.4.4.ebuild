# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

MY_PN="Cheetah"
MY_P="${MY_PN}-${PV/_}"

DESCRIPTION="Python-powered template engine and code generator"
HOMEPAGE="http://www.cheetahtemplate.org/ https://rtyler.github.com/cheetah/ https://pypi.org/project/Cheetah/"
SRC_URI="https://files.pythonhosted.org/packages/cd/b0/c2d700252fc251e91c08639ff41a8a5203b627f4e0a2ae18a6b662ab32ea/Cheetah-2.4.4.tar.gz"

LICENSE="MIT"
IUSE=""
KEYWORDS="*"
SLOT="0"

RDEPEND="dev-python/markdown[${PYTHON_USEDEP}]
	!dev-python/cheetah3"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_P}"

DOCS=( CHANGES README.markdown TODO )
# Race in the test suite
DISTUTILS_IN_SOURCE_BUILD=1

python_prepare_all() {
	# Disable broken tests.
	sed \
		-e "/Unicode/d" \
		-e "s/if not sys.platform.startswith('java'):/if False:/" \
		-e "/results =/a\\    sys.exit(not results.wasSuccessful())" \
		-i cheetah/Tests/Test.py || die "sed failed"

	distutils-r1_python_prepare_all
}

python_test() {
	"${PYTHON}" cheetah/Tests/Test.py || die "Testing failed with ${EPYTHON}"
}