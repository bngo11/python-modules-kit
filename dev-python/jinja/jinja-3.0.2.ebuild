# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A full-featured template engine for Python"
HOMEPAGE="https://palletsprojects.com/p/jinja/ https://pypi.org/project/Jinja2/"
SRC_URI="https://files.pythonhosted.org/packages/f8/86/7c0eb6e8b05385d1ce682abc0f994abd1668e148fb52603fa86e15d4c110/Jinja2-3.0.2.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/jinja-compat )
	!dev-python/jinja:compat
	dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE="examples python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/Jinja2-3.0.2"

distutils_enable_sphinx docs \
	dev-python/sphinx-issues \
	dev-python/pallets-sphinx-themes
src_prepare() {
	# avoid unnecessary dep on extra sphinxcontrib modules
	sed -i '/sphinxcontrib.log_cabinet/ d' docs/conf.py || die
	distutils-r1_src_prepare
}
python_install_all() {
	if use examples ; then
		docinto examples
		dodoc -r examples/.
	fi
	distutils-r1_python_install_all
}
pkg_postinst() {
	if ! has_version dev-python/Babel; then
		elog "For i18n support, please emerge dev-python/Babel."
	fi
}
