# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Protocol Buffers using Python type annotations"
HOMEPAGE="https://github.com/eigenein/protobuf https://pypi.org/project/pure-protobuf/"
SRC_URI="https://files.pythonhosted.org/packages/61/ce/1b3143bd6c234765c13abee163654a4b9d2b80574e1c1f9818aca111ea29/pure_protobuf-3.1.1.tar.gz -> pure_protobuf-3.1.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pure_protobuf-3.1.1"

distutils_enable_tests pytest
