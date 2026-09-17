# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="None https://pypi.org/project/vcs-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/3e/97/792a4ef20344f9af3e16098b58b45eb5d6202259b84fc80c43bc000a5e6c/vcs_versioning-2.4.1.tar.gz -> vcs_versioning-2.4.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/vcs_versioning-2.4.1"