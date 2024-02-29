# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python implementation of Protocol Buffers data types with dataclasses support"
HOMEPAGE="
	https://github.com/eigenein/protobuf
	https://pypi.org/project/pure-protobuf/
"
SRC_URI="https://files.pythonhosted.org/packages/84/a5/bbca700d6b9ce4c18715255ef162065fa54b295d5d419571285b2db12931/pure_protobuf-2.3.0.tar.gz -> pure_protobuf-2.3.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

# ModuleNotFoundError
RESTRICT="test"

distutils_enable_tests pytest