# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Curses-based user interface library for Python"
HOMEPAGE="http://urwid.org/ https://pypi.org/project/urwid/ https://github.com/urwid/urwid/"
SRC_URI="https://files.pythonhosted.org/packages/e0/7d/4400463fb3f66c83094d97bc6c532d207996c928c83f150896cb3533422c/urwid-4.0.3.tar.gz -> urwid-4.0.3.tar.gz"

DEPEND=""
IUSE="examples"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/urwid-4.0.3"

distutils_enable_sphinx docs
python_install_all() {
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
