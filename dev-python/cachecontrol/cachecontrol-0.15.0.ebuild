# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="uv_build"
inherit distutils-r1

DESCRIPTION="The httplib2 caching algorithms packaged up for use with requests."
HOMEPAGE="https://github.com/ionrock/cachecontrol/ https://pypi.org/project/CacheControl/"
SRC_URI="https://files.pythonhosted.org/packages/f6/03/825d9b1cb14c5ca1ce4dec89fbb87ef87bdd5d45eb5bd96a463aa1ead457/cachecontrol-0.15.0.tar.gz -> cachecontrol-0.15.0.tar.gz"

DEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/uv_build[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/cherrypy[${PYTHON_USEDEP}] dev-python/lockfile[${PYTHON_USEDEP}] dev-python/mock[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cachecontrol-0.15.0"