# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables."
HOMEPAGE="https://github.com/bw2/ConfigArgParse https://pypi.org/project/ConfigArgParse/"
SRC_URI="https://files.pythonhosted.org/packages/43/0d/f7854743a85fe4afa8a2df798de94ef9fb2b58e191087a17459786b63790/configargparse-1.7.6.tar.gz -> configargparse-1.7.6.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/configargparse-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/ConfigArgParse-1.7.6"