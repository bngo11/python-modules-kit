# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="SVG path objects and parser"
HOMEPAGE="None https://pypi.org/project/svg.path/"
SRC_URI="https://files.pythonhosted.org/packages/66/b9/649abbe870842c185b12920e937e9b95d4c2b18de50af98d2c140df3e179/svg_path-7.0.tar.gz -> svg_path-7.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/svg_path-7.0"