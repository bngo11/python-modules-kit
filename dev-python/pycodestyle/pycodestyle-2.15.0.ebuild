# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python style guide checker"
HOMEPAGE="https://pycodestyle.pycqa.org/ https://pypi.org/project/pycodestyle/"
SRC_URI="https://files.pythonhosted.org/packages/86/df/178e41c9ed0ff33c23b3f3757e4e658c889f9abc5ad76ece6cd607b12e9c/pycodestyle-2.15.0.tar.gz -> pycodestyle-2.15.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycodestyle-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pycodestyle-2.15.0"