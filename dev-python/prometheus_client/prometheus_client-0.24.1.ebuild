# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python client for the Prometheus monitoring system."
HOMEPAGE="None https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/f0/58/a794d23feb6b00fc0c72787d7e87d872a6730dd9ed7c7b3e954637d8f280/prometheus_client-0.24.1.tar.gz -> prometheus_client-0.24.1.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/prometheus_client-compat )
	dev-python/twisted[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.24.1"