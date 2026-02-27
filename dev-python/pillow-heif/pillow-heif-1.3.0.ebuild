# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python interface for libheif library"
HOMEPAGE="https://github.com/bigcat88/pillow_heif https://pypi.org/project/pillow-heif/"
SRC_URI="https://files.pythonhosted.org/packages/cd/58/2df4fc42840633e01c97b75965cb1bc6e14425973b92382391650e97e4b7/pillow_heif-1.3.0.tar.gz -> pillow_heif-1.3.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pillow_heif-1.3.0"