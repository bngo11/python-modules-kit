# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Simple, fast, extensible JSON encoder/decoder for Python"
HOMEPAGE="https://github.com/simplejson/simplejson https://pypi.org/project/simplejson/"
SRC_URI="https://files.pythonhosted.org/packages/2f/f0/ea064bba6c9afda0168ddb834f1c75a93351031e25aee35c046108e7f292/simplejson-4.2.0.tar.gz -> simplejson-4.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/simplejson-4.2.0"