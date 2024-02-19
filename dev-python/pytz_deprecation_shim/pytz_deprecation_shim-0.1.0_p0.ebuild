# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_P=${P/_p/.post}

DESCRIPTION="Shims to make deprecation of pytz easier"
HOMEPAGE="
	https://github.com/pganssle/pytz-deprecation-shim/
	https://pypi.org/project/pytz-deprecation-shim/
"
SRC_URI="https://files.pythonhosted.org/packages/94/f0/909f94fea74759654390a3e1a9e4e185b6cd9aa810e533e3586f39da3097/pytz_deprecation_shim-0.1.0.post0.tar.gz -> pytz_deprecation_shim-0.1.0.post0.tar.gz"
S=${WORKDIR}/${MY_P}

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	sys-libs/timezone-data
"
BDEPEND="
	test? (
		dev-python/hypothesis[${PYTHON_USEDEP}]
		dev-python/pytz[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest
distutils_enable_sphinx docs \
	dev-python/sphinx_rtd_theme

src_prepare() {
	# apparently used only as a fallback
	sed -i -e '/tzdata/d' setup.cfg || die
	distutils-r1_src_prepare
}