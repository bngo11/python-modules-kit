# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit bash-completion-r1 distutils-r1

DESCRIPTION="Universal Command Line Environment for AWS"
HOMEPAGE="https://pypi.org/project/awscli/"
SRC_URI="https://files.pythonhosted.org/packages/bd/95/3a922ef418169ecc3cbabdbeee30dbeea02ef5917f1036c2d9f330e01541/awscli-1.20.65.tar.gz"

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