# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables."
HOMEPAGE="https://github.com/bw2/ConfigArgParse https://pypi.org/project/ConfigArgParse/"
SRC_URI="https://files.pythonhosted.org/packages/bc/d9/c591a80cf3335de7820c6762f8ee9298a43da5319803d319e16657b6fdf2/configargparse-1.9.0.tar.gz -> configargparse-1.9.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/configargparse-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ConfigArgParse-1.9.0"