# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A UFO font library"
HOMEPAGE="https://github.com/fonttools/ufoLib2"
SRC_URI="https://files.pythonhosted.org/packages/b4/81/d4b1bd9c1bddd8877e26ce66294235e990982512155676ff589ffdce589b/ufolib2-0.19.1.tar.gz -> ufolib2-0.19.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/fonttools[${PYTHON_USEDEP}]
	dev-python/fs[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]"
BDEPEND="
	app-arch/unzip"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ufoLib2-0.19.1"

python_prepare_all() {
	sed -e '/\<wheel\>/d' -i setup.cfg || die
	distutils-r1_python_prepare_all
}
