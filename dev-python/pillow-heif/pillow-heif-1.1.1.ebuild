# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface for libheif library"
HOMEPAGE="https://github.com/bigcat88/pillow_heif https://pypi.org/project/pillow-heif/"
SRC_URI="https://files.pythonhosted.org/packages/64/65/77284daf2a8a2849b9040889bd8e1b845e693ed97973a28ba2122b8922ad/pillow_heif-1.1.1.tar.gz -> pillow_heif-1.1.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pillow_heif-1.1.1"