# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="None https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/f3/3e/f12a3ba6e1b57c1098fc1a2138979b897cfe90ba672a40f863673d5c865e/gphoto2-2.6.2.tar.gz -> gphoto2-2.6.2.tar.gz"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.6.2"