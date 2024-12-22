# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3+ pypy3 )
PYTHON_REQ_USE="xml(+)"

inherit distutils-r1

DESCRIPTION="Easily create mock objects on D-Bus for software testing"
HOMEPAGE="
	https://github.com/martinpitt/python-dbusmock/
	https://pypi.org/project/python-dbusmock/
"
SRC_URI="https://files.pythonhosted.org/packages/98/8d/a16b5cac277c92fcad6887a3388faa540352de58c1068019e59067b2bcbe/python_dbusmock-0.34.1.tar.gz -> python_dbusmock-0.34.1.tar.gz"

LICENSE="LGPL-3+"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/dbus-python[${PYTHON_USEDEP}]
	dev-python/pygobject:3[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

EPYTEST_IGNORE=(
	# linter tests, fragile to newer linter versions
	tests/test_code.py
)

src_prepare() {
	# dev-python/dbus-python uses autotools, so no .dist-info there
	sed -i '/dbus-python/d' pyproject.toml setup.cfg || die

	distutils-r1_src_prepare
}

python_test() {
	# Tests break if XDG_DATA_DIRS is modified by flatpak install
	unset XDG_DATA_DIRS
	distutils-r1_python_test
}