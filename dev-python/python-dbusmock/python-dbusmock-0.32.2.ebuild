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
SRC_URI="https://files.pythonhosted.org/packages/d2/b1/240ad35502c356f9f6e30ca246b66df6ff44b01a115920da27bf7a8d4ea7/python-dbusmock-0.32.2.tar.gz -> python-dbusmock-0.32.2.tar.gz"

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