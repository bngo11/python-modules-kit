# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="Type system extensions for programs checked with the mypy type checker."
HOMEPAGE="None https://pypi.org/project/mypy-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/d0/6f/43edf3be2748d0e40974a5ee046a8bb4c9961a4bdd3e7d5c6dcbf32d1af6/mypy_extensions-1.2.0.tar.gz -> mypy_extensions-1.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/mypy_extensions-1.2.0"