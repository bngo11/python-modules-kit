# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Discover and load entry points from installed packages."
HOMEPAGE="None https://pypi.org/project/entrypoints/"
SRC_URI="https://files.pythonhosted.org/packages/27/65/4c220dd7e414a1e50a6d686eb1d1afccd1aea841154c5c480922bfc83834/entrypoints-0.4.1.tar.gz -> entrypoints-0.4.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/entrypoints-0.4.0-flit-core-4.patch
)
S="${WORKDIR}/entrypoints-0.4.1"