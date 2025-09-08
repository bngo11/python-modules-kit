# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE="None https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/8c/8b/57666417c0f90f08bcafa776861060426765fdb422eb10212086fb811d26/dnspython-2.8.0.tar.gz -> dnspython-2.8.0.tar.gz"

DEPEND="
	dev-python/idna[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/cryptography[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	python_targets_python2_7? ( dev-python/dnspython-compat )
	${DEPEND}"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="ISC"
KEYWORDS="*"
S="${WORKDIR}/dnspython-2.8.0"

src_prepare() {
	sed -i -e 's|^license =.*|license = {text = "ISC"}|g' pyproject.toml
	distutils-r1_src_prepare
}
