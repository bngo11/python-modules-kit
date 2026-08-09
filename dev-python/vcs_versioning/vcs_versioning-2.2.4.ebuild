# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="None https://pypi.org/project/vcs-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/3c/92/14277e46f415b6a01b6e94960cd6bc3acdc366e990d43ad71d63fef83d1b/vcs_versioning-2.2.4.tar.gz -> vcs_versioning-2.2.4.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/vcs_versioning-2.2.4"