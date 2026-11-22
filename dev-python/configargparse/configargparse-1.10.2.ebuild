# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables."
HOMEPAGE="https://github.com/bw2/ConfigArgParse https://pypi.org/project/ConfigArgParse/"
SRC_URI="https://files.pythonhosted.org/packages/14/94/269624ec6e8fc8fd5ab6a81c208aea9e02327b8874f9bc254f5379d5a2ec/configargparse-1.10.2.tar.gz -> configargparse-1.10.2.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/configargparse-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ConfigArgParse-1.10.2"