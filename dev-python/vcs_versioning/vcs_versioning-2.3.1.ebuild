# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="None https://pypi.org/project/vcs-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/a6/cb/6f5c4ed4da249ef5eea34ddfbb38174c5533ff3da8703b8252bf44b80396/vcs_versioning-2.3.1.tar.gz -> vcs_versioning-2.3.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/vcs_versioning-2.3.1"