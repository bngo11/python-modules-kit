# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Internationalization utilities"
HOMEPAGE="https://babel.pocoo.org/ https://pypi.org/project/babel/"
SRC_URI="https://files.pythonhosted.org/packages/7d/b2/51899539b6ceeeb420d40ed3cd4b7a40519404f9baf3d4ac99dc413a834b/babel-2.18.0.tar.gz -> babel-2.18.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/Babel-compat )
	dev-python/pytz[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/babel-2.18.0"