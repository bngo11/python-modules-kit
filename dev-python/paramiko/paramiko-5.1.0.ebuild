# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="SSH2 protocol library"
HOMEPAGE="None https://pypi.org/project/paramiko/"
SRC_URI="https://files.pythonhosted.org/packages/76/cb/b1fde76618d84b1acf54d3d03d2b833ba5878afd12b9899346cc080f209d/paramiko-5.1.0.tar.gz -> paramiko-5.1.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/paramiko-compat )
	>=dev-python/bcrypt-3.1.3[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.5[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.1.7[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/paramiko-5.1.0"