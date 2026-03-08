# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables."
HOMEPAGE="https://github.com/bw2/ConfigArgParse https://pypi.org/project/ConfigArgParse/"
SRC_URI="https://files.pythonhosted.org/packages/04/2a/44a4574b3c6cbbabef5ed132d6fe9ff283b2a67f5dda512def9e9fa4be02/configargparse-1.7.3.tar.gz -> configargparse-1.7.3.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/configargparse-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ConfigArgParse-1.7.3"