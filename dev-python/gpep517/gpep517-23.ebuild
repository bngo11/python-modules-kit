# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION="Python package builder and installer for non-pip-centric world"
HOMEPAGE="None https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/6b/c7/0db99e2a001e2a7cc1a01b67b276d3a233e0a791122f84e618739929a07c/gpep517-23.tar.gz -> gpep517-23.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gpep517-23"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
