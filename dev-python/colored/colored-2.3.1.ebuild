# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Simple python library for color and formatting to terminal"
HOMEPAGE="None https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/4a/32/b772def12071faf780dd14e8a95ec8eba4bf5934f302de3a3780b919859a/colored-2.3.1.tar.gz -> colored-2.3.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/colored-2.3.1"