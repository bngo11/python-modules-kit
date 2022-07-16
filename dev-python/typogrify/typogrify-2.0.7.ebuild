# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Filters for web typography, supporting Django & Jinja templates"
HOMEPAGE="https://github.com/mintchaos/typogrify/ https://pypi.org/project/typogrify/"
SRC_URI="https://files.pythonhosted.org/packages/8a/bf/64959d6187d42472acb846bcf462347c9124952c05bd57e5769d5f28f9a6/typogrify-2.0.7.tar.gz -> typogrify-2.0.7.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/smartypants-1.8.3[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

python_test() {
	epytest --doctest-modules typogrify/filters.py typogrify/packages/titlecase/tests.py
}