# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-jsmath is a sphinx extension which renders displayed maths in HTML via JavaScript"
HOMEPAGE="None https://pypi.org/project/sphinxcontrib-jsmath/"
SRC_URI="https://files.pythonhosted.org/packages/59/02/4f334c7fc3e54c51d2364575a41cd2fae6847e7f53001949f0be5f32e18b/sphinxcontrib_jsmath-2.0.0.tar.gz -> sphinxcontrib_jsmath-2.0.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_jsmath-2.0.0"