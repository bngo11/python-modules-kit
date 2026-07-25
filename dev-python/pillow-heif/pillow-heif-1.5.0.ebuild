# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface for libheif library"
HOMEPAGE="https://github.com/bigcat88/pillow_heif https://pypi.org/project/pillow-heif/"
SRC_URI="https://files.pythonhosted.org/packages/08/dc/6ab7a469ced899fbdbbc27b00067e4da02c21ff1ce7e9c6110f14e8fea6c/pillow_heif-1.5.0.tar.gz -> pillow_heif-1.5.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pillow_heif-1.5.0"