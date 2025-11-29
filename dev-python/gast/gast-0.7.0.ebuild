# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python AST that abstracts the underlying Python version"
HOMEPAGE="https://github.com/serge-sans-paille/gast/ https://pypi.org/project/gast/"
SRC_URI="https://files.pythonhosted.org/packages/91/f6/e73969782a2ecec280f8a176f2476149dd9dba69d5f8779ec6108a7721e6/gast-0.7.0.tar.gz -> gast-0.7.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/gast-0.7.0"