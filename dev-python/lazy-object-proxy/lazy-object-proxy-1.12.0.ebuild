# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A fast and thorough lazy object proxy"
HOMEPAGE="https://github.com/ionelmc/python-lazy-object-proxy https://python-lazy-object-proxy.readthedocs.org https://pypi.org/project/lazy-object-proxy/"
SRC_URI="https://files.pythonhosted.org/packages/08/a2/69df9c6ba6d316cfd81fe2381e464db3e6de5db45f8c43c6a23504abf8cb/lazy_object_proxy-1.12.0.tar.gz -> lazy_object_proxy-1.12.0.tar.gz"

DEPEND=""
RDEPEND="test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/lazy_object_proxy-1.12.0"