# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A documentation generator for GObject-based libraries"
HOMEPAGE="https://gitlab.gnome.org/GNOME/gi-docgen"
SRC_URI="https://files.pythonhosted.org/packages/70/2e/e0c9ea993a015347d72344f9714d359abc5a176ac989cd1320ae09b3a411/gi_docgen-2025.5.tar.gz -> gi_docgen-2025.5.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/typogrify[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 GPL-3+ ) CC0-1.0 OFL-1.1 MIT GPL-3+ LGPL-2 MIT MPL-1.1 CC-By-SA-3"
KEYWORDS="*"
S="${WORKDIR}/gi_docgen-2025.5"