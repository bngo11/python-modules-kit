# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface for libheif library"
HOMEPAGE="https://github.com/bigcat88/pillow_heif https://pypi.org/project/pillow-heif/"
SRC_URI="https://files.pythonhosted.org/packages/44/c1/82145984920ca055675af2c2795bd30da6f7461215c41f3c1eacb3d66353/pillow_heif-1.8.1.tar.gz -> pillow_heif-1.8.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pillow_heif-1.8.1"