# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library to parse and apply unified diffs."
HOMEPAGE="https://github.com/conan-io/python-patch https://pypi.org/project/patch-ng/"
SRC_URI="https://files.pythonhosted.org/packages/da/b6/8ea8095f964f93567bbe28709298b30104ad418b50d4217538387bf48f7d/patch_ng-1.19.1.tar.gz -> patch_ng-1.19.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/patch_ng-1.19.1"