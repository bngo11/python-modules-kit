# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Curses-based user interface library for Python"
HOMEPAGE="http://urwid.org/ https://pypi.org/project/urwid/ https://github.com/urwid/urwid/"
SRC_URI="https://files.pythonhosted.org/packages/d4/6a/229b3fca37e146bc4ad763753ae176de866571230b255a11d5829be1fcfc/urwid-4.0.8.tar.gz -> urwid-4.0.8.tar.gz"

DEPEND=""
IUSE="examples"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/urwid-4.0.8"

distutils_enable_sphinx docs
python_install_all() {
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
