# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Protocol Buffers using Python type annotations"
HOMEPAGE="https://github.com/eigenein/protobuf https://pypi.org/project/pure-protobuf/"
SRC_URI="https://files.pythonhosted.org/packages/99/5f/b557dd76c8f1b3b2e3ce048a359bea56096fcef98fc1958c91daa0076d94/pure_protobuf-3.1.0.tar.gz -> pure_protobuf-3.1.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pure_protobuf-3.1.0"

distutils_enable_tests pytest
