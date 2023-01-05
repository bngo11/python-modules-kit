# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://code.launchpad.net/~tseaver/pkginfo/trunk https://pypi.org/project/pkginfo/"
SRC_URI="https://files.pythonhosted.org/packages/bb/14/7062bc8a03d5c4a0737068f1d11dfcdb675b6437b7d754163e96874e9dff/pkginfo-1.9.4.tar.gz -> pkginfo-1.9.4.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pkginfo-1.9.4"