# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Bash tab completion for argparse"
HOMEPAGE="None https://pypi.org/project/argcomplete/"
SRC_URI="https://files.pythonhosted.org/packages/38/61/0b9ae6399dd4a58d8c1b1dc5a27d6f2808023d0b5dd3104bb99f45a33ff6/argcomplete-3.6.3.tar.gz -> argcomplete-3.6.3.tar.gz"

DEPEND="dev-python/hatch-vcs[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/argcomplete-3.6.3"