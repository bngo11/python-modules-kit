# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="uv_build"
inherit distutils-r1

DESCRIPTION="The httplib2 caching algorithms packaged up for use with requests."
HOMEPAGE="https://github.com/ionrock/cachecontrol/ https://pypi.org/project/CacheControl/"
SRC_URI="https://files.pythonhosted.org/packages/2d/f6/c972b32d80760fb79d6b9eeb0b3010a46b89c0b23cf6329417ff7886cd22/cachecontrol-0.14.4.tar.gz -> cachecontrol-0.14.4.tar.gz"

DEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/uv-build[${PYTHON_USEDEP}]"
RDEPEND="test? ( dev-python/cherrypy[${PYTHON_USEDEP}] dev-python/lockfile[${PYTHON_USEDEP}] dev-python/mock[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/cachecontrol-0.14.4"