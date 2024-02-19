# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python implementation of Protocol Buffers data types with dataclasses support"
HOMEPAGE="
	https://github.com/eigenein/protobuf
	https://pypi.org/project/pure-protobuf/
"
SRC_URI="https://files.pythonhosted.org/packages/b9/ce/d58cc3bc4a3dd156316763309a70788cbbc729ef98e44f1ca8e2775755bf/pure_protobuf-3.0.0.tar.gz -> pure_protobuf-3.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

# ModuleNotFoundError
RESTRICT="test"

distutils_enable_tests pytest