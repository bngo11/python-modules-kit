# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Synchronize calendars and contacts"
HOMEPAGE="https://github.com/pimutils/vdirsyncer"
SRC_URI="https://files.pythonhosted.org/packages/2e/f6/94ed82de371cc80784ffe90e0dac8ce9f5d272c01d614415a5e800ffb303/vdirsyncer-0.20.0.tar.gz -> vdirsyncer-0.20.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/click-log[${PYTHON_USEDEP}]
	dev-python/click-threading[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	dev-python/atomicwrites[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/vdirsyncer-0.20.0"

DOCS=( AUTHORS.rst CHANGELOG.rst CONTRIBUTING.rst README.rst config.example )
