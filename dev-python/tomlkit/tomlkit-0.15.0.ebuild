# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Style preserving TOML library"
HOMEPAGE="None https://pypi.org/project/tomlkit/"
SRC_URI="https://files.pythonhosted.org/packages/51/db/03eaf4331631ef6b27d6e3c9b68c54dc6f0d63d87201fed600cc409307fd/tomlkit-0.15.0.tar.gz -> tomlkit-0.15.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tomlkit-0.15.0"