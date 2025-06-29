# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="MWParserFromHell is a parser for MediaWiki wikicode."
HOMEPAGE="https://github.com/earwig/mwparserfromhell https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/21/55/ddaee42d4aabd8f4b22dfab988482729184e238119c584411f4d03a00dcb/mwparserfromhell-0.7.0.tar.gz -> mwparserfromhell-0.7.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/mwparserfromhell-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mwparserfromhell-0.7.0"