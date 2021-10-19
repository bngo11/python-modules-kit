# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="The next generation HTTP client."
HOMEPAGE="https://github.com/encode/httpx https://pypi.org/project/httpx/"
SRC_URI="https://files.pythonhosted.org/packages/62/0d/9804c841eaf5e0f72890e54eff21bb49664289edf8cbe09bd47db513bd68/httpx-0.20.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/httpcore[${PYTHON_USEDEP}]
	dev-python/brotlipy[${PYTHON_USEDEP}]
	dev-python/rfc3986[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/httpx-0.20.0"