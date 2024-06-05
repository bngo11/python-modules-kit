# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1 optfeature

DESCRIPTION="A Python module to bypass Cloudflare's anti-bot page"
HOMEPAGE="https://github.com/VeNoMouS/cloudscraper"
SRC_URI="https://files.pythonhosted.org/packages/ac/25/6d0481860583f44953bd791de0b7c4f6d7ead7223f8a17e776247b34a5b4/cloudscraper-1.2.71.tar.gz -> cloudscraper-1.2.71.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	dev-python/pyparsing[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		dev-python/js2py[${PYTHON_USEDEP}]
		dev-python/pytest-forked[${PYTHON_USEDEP}]
		dev-python/pytest-timeout[${PYTHON_USEDEP}]
		dev-python/responses[${PYTHON_USEDEP}]
		net-libs/nodejs
	)
"

distutils_enable_tests pytest

pkg_postinst() {
	optfeature "brotli decompresssion support" "dev-python/brotlipy"

	optfeature "js2py interpreter support" "dev-python/js2py"
	optfeature "node.js interpreter support" "net-libs/nodejs"
}