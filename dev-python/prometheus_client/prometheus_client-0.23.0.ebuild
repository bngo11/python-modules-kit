# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python client for the Prometheus monitoring system."
HOMEPAGE="None https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/59/5d/2f7cd40906695c960959d7b65eb67a32354dbd4b68a5ae1ec4d0dc586010/prometheus_client-0.23.0.tar.gz -> prometheus_client-0.23.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/prometheus_client-compat )
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.23.0"