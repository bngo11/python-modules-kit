# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Cheroot is the high-performance, pure-Python HTTP server used by CherryPy."
HOMEPAGE="https://cherrypy.org/ https://pypi.org/project/Cheroot/ https://github.com/cherrypy/cheroot"
SRC_URI="https://files.pythonhosted.org/packages/f4/01/5ef06df932a974d016ab9d7f93e78740b572c4020016794fd4799cdc09c6/cheroot-11.0.0.tar.gz -> cheroot-11.0.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
RESTRICT="test"

RDEPEND="
	>=dev-python/six-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/more-itertools-2.6[${PYTHON_USEDEP}]
	dev-python/jaraco-functools[${PYTHON_USEDEP}]
"
DEPEND="
	${RDEPEND}
	>=dev-python/setuptools-34.4.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-1.15.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm_git_archive-1.0[${PYTHON_USEDEP}]
"