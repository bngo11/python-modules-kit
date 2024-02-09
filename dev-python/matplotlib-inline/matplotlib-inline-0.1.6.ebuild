# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Inline Matplotlib backend for Jupyter"
HOMEPAGE="
	https://github.com/ipython/matplotlib-inline/
	https://pypi.org/project/matplotlib-inline/
"
SRC_URI="https://files.pythonhosted.org/packages/d9/50/3af8c0362f26108e54d58c7f38784a3bdae6b9a450bab48ee8482d737f44/matplotlib-inline-0.1.6.tar.gz -> matplotlib-inline-0.1.6.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

# Although in theory we could depend on matplotlib, upstream does not.
# This is because the sole purpose of the package is to be loaded by
# ipython (also not a dependency!) as a response to interactive use of
# the "%matplotlib" magic.
#
# In order to be seamless and straightforward, this backend is always
# installed and just requires users using matplotlib, to install
# matplotlib before importing and using it.
RDEPEND="
	dev-python/traitlets[${PYTHON_USEDEP}]
"