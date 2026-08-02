# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="None https://pypi.org/project/vcs-versioning/"
SRC_URI="https://files.pythonhosted.org/packages/e9/bb/5270e8ffd3123051ac4fbbaabf61afb8f27819ac8ced0f0cc4b24137d30e/vcs_versioning-2.2.3.tar.gz -> vcs_versioning-2.2.3.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/vcs_versioning-2.2.3"