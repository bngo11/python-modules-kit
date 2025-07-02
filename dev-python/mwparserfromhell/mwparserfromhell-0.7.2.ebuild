# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="MWParserFromHell is a parser for MediaWiki wikicode"
HOMEPAGE="None https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/eb/e1/4e4b53fd838b82061243222d6123ddaf6176278b1ad7058382a1312cb7ae/mwparserfromhell-0.7.2.tar.gz -> mwparserfromhell-0.7.2.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mwparserfromhell-0.7.2"