# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Python library for working with RDF, a simple powerful language to represent information"
HOMEPAGE="https://pypi.org/project/rdflib/"
SRC_URI="https://github.com/RDFLib/rdflib/tarball/856c1af6b59f919d0d1230cb718c72f1415caf23 -> rdflib-7.2.1-856c1af.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/html5lib[${PYTHON_USEDEP}]
	dev-python/isodate[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]
	dev-python/poetry-core[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/RDFLib-* "$S" || die
	fi
}