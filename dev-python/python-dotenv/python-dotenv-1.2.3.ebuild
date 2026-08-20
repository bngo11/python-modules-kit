# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Read key-value pairs from a .env file and set them as environment variables"
HOMEPAGE="None https://pypi.org/project/python-dotenv/"
SRC_URI="https://files.pythonhosted.org/packages/6a/53/ed9d74092561d4b01a2ef1349d52cdbc135e526c245f366b089cfca6de49/python_dotenv-1.2.3.tar.gz -> python_dotenv-1.2.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/python_dotenv-1.2.3"

DOCS=( CHANGELOG.md README.md )
python_install() {
	distutils-r1_python_install
	ln -s dotenv "${D}$(python_get_scriptdir)"/python-dotenv || die
}
src_install() {
	distutils-r1_src_install
	mv "${ED}"/usr/bin/{,python-}dotenv || die
}
