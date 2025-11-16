# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python tool for working with audio files, specifically MP3 files containing ID3 metadata"
HOMEPAGE="None https://pypi.org/project/eyeD3/"
SRC_URI="https://files.pythonhosted.org/packages/ee/aa/5873b98fa5f570724a65757987c155dea68d27f0acae17da1b1ffc8cd0d2/eyed3-0.9.9.tar.gz -> eyed3-0.9.9.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/deprecation[${PYTHON_USEDEP}]
	dev-python/filetype[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="*"
S="${WORKDIR}/eyeD3-0.9.9"