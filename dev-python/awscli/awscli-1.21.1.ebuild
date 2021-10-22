# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit bash-completion-r1 distutils-r1

DESCRIPTION="Universal Command Line Environment for AWS"
HOMEPAGE="https://pypi.org/project/awscli/"
SRC_URI="https://files.pythonhosted.org/packages/b9/94/ce84940f98712ab4f904b1ff237b65974b0c2fad326c8e0f469e593e6f8d/awscli-1.21.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="test"

# Tests fail with network-sandbox, since they try to resolve google.com
RESTRICT="test"

RDEPEND="
	>=dev-python/botocore-1.15.32[${PYTHON_USEDEP}]
	<dev-python/colorama-0.4.4[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
	<dev-python/rsa-3.5.0.0[${PYTHON_USEDEP}]
	>=dev-python/s3transfer-0.3.0[${PYTHON_USEDEP}]
	<dev-python/pyyaml-5.4.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
	)
"

python_test() {
	nosetests -vv || die
}

python_install_all() {
	newbashcomp bin/aws_bash_completer aws

	insinto /usr/share/zsh/site-functions
	newins bin/aws_zsh_completer.sh _aws

	distutils-r1_python_install_all

	rm "${ED}"/usr/bin/{aws.cmd,aws_bash_completer,aws_zsh_completer.sh} || die
}