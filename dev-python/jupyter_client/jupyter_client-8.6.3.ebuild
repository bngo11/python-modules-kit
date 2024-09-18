# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3+ pypy3 )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="Jupyter protocol implementation and client libraries"
HOMEPAGE="
	https://jupyter.org/
	https://github.com/jupyter/jupyter_client/
	https://pypi.org/project/jupyter-client/
"
SRC_URI="https://files.pythonhosted.org/packages/71/22/bf9f12fdaeae18019a468b68952a60fe6dbab5d67cd2a103cac7659b41ca/jupyter_client-8.6.3.tar.gz -> jupyter_client-8.6.3.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="
	>=dev-python/jupyter_core-5.1[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
	>=dev-python/pyzmq-23.0[${PYTHON_USEDEP}]
	>=www-servers/tornado-6.0[${PYTHON_USEDEP}]
	dev-python/traitlets[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-4.8.3[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		>=dev-python/ipykernel-6.14[${PYTHON_USEDEP}]
		>=dev-python/pytest-asyncio-0.18[${PYTHON_USEDEP}]
		>=dev-python/pytest-jupyter-0.4.1[${PYTHON_USEDEP}]
		dev-python/pytest-timeout[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

EPYTEST_DESELECT=(
	# TODO: times out
	tests/test_client.py::TestAsyncKernelClient::test_input_request
	# TODO
	tests/test_multikernelmanager.py::TestKernelManager::test_tcp_cinfo
)