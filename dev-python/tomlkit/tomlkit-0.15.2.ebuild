# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="poetry"
inherit distutils-r1

DESCRIPTION="Style preserving TOML library"
HOMEPAGE="None https://pypi.org/project/tomlkit/"
SRC_URI="https://files.pythonhosted.org/packages/08/72/fc01563df95c189a9f65850096bdc205bc2fe37da6c740cd64afaf18d07e/tomlkit-0.15.2.tar.gz -> tomlkit-0.15.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/tomlkit-0.15.2"