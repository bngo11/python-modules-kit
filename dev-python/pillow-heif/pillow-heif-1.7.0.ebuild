# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface for libheif library"
HOMEPAGE="https://github.com/bigcat88/pillow_heif https://pypi.org/project/pillow-heif/"
SRC_URI="https://files.pythonhosted.org/packages/e8/be/0202b6492a225ec0a6cebc615fbf587179a72cf3a7fa91c0753cba7b986f/pillow_heif-1.7.0.tar.gz -> pillow_heif-1.7.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pillow_heif-1.7.0"