# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Easy VCS-based management of project version strings"
HOMEPAGE="
	https://pypi.org/project/versioneer/
	https://github.com/python-versioneer/python-versioneer/
"
SRC_URI="https://files.pythonhosted.org/packages/23/82/70bf841a7ed99545e797889c18d1aff0fe61df9727f9ccd354090ad4c3b1/versioneer-0.9.tar.gz -> versioneer-0.9.tar.gz"

SLOT="0"
LICENSE="Unlicense"
KEYWORDS="*"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		dev-python/build[${PYTHON_USEDEP}]
		dev-python/packaging[${PYTHON_USEDEP}]
		dev-vcs/git
		!!dev-python/nose[${PYTHON_USEDEP}]
	)
"

python_test() {
	esetup.py make_versioneer

	git config --global user.email "you@example.com" || die
	git config --global user.name "Your Name" || die
	git config --global init.defaultBranch whatever || die

	"${EPYTHON}" test/git/test_git.py -v || die
}