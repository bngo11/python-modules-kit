# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library to parse and apply unified diffs."
HOMEPAGE="https://github.com/conan-io/python-patch https://pypi.org/project/patch-ng/"
SRC_URI="https://files.pythonhosted.org/packages/65/bb/ebd7c6058dcfbf634986f9a8b3fb638f3269501c73701a48b7530042da5b/patch-ng-1.19.0.tar.gz -> patch-ng-1.19.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/patch-ng-1.19.0"