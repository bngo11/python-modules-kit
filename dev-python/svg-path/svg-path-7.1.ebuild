# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="SVG path objects and parser"
HOMEPAGE="None https://pypi.org/project/svg.path/"
SRC_URI="https://files.pythonhosted.org/packages/cd/4c/561a320906f9e4ccb7ed9ef18885e8a1afccc7813080a6dbd3e38bd16403/svg_path-7.1.tar.gz -> svg_path-7.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/svg_path-7.1"