# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="None https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/fc/59/39b1c7dbc8bb87226c624d8ad714129c5288af4383e89b91894a391c3770/gphoto2-2.6.1.tar.gz -> gphoto2-2.6.1.tar.gz"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.6.1"