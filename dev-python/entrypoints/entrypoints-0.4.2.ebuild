# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Discover and load entry points from installed packages."
HOMEPAGE="None https://pypi.org/project/entrypoints/"
SRC_URI="https://files.pythonhosted.org/packages/9a/6d/8f96c1eb3aa1b448a718866e88e0201145a35e80ffcee3b1b88543d3e740/entrypoints-0.4.2.tar.gz -> entrypoints-0.4.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/entrypoints-0.4.0-flit-core-4.patch
)
S="${WORKDIR}/entrypoints-0.4.2"