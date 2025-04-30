# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION="Python package builder and installer for non-pip-centric world"
HOMEPAGE="None https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/f4/48/47e6dfe6d3a70e4a701d8ddf4d8f87f32e28a323f62d3153e437609f76df/gpep517-18.tar.gz -> gpep517-18.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gpep517-18"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
