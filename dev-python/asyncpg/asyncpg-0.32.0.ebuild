# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A database interface library designed specifically for PostgresSQL and Python/asyncio."
HOMEPAGE="https://github.com/MagicStack/asyncpg
"
SRC_URI="https://files.pythonhosted.org/packages/80/4e/59dc964f962f09e3ed472e5d2d3ba670a41a2be25080dc62ab3db507ff5e/asyncpg-0.32.0.tar.gz -> asyncpg-0.32.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/asyncpg-0.32.0"