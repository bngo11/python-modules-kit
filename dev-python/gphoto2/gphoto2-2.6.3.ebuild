# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="None https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/c1/63/1ba9c79d60755a2653ffb60c4a22b9cb8a64b4c2a45e99ee31c6dbfeffc3/gphoto2-2.6.3.tar.gz -> gphoto2-2.6.3.tar.gz"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.6.3"