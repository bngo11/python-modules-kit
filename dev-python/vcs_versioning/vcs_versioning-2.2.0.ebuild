# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="None https://pypi.org/project/vcs-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/ea/09/6702475a5d382a432201d20b9be733f2981e7b364f4ff03296f534d9f96f/vcs_versioning-2.2.0.tar.gz -> vcs_versioning-2.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/vcs_versioning-2.2.0"