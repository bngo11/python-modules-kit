# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit bash-completion-r1 distutils-r1

DESCRIPTION="The PyPA recommended tool for installing Python packages."
HOMEPAGE="None https://pypi.org/project/pip/"
SRC_URI="https://files.pythonhosted.org/packages/4d/87/fb90046e096a03aeab235e139436b3fe804cdd447ed2093b0d70eba3f7f8/pip-24.2.tar.gz -> pip-24.2.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pip-compat )"
IUSE="python_targets_python2_7 vanilla"
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pip-24.2"

python_prepare_all() {
	if ! use vanilla; then
		# Running pip without --target, --prefix, --root, or --user will result
		# in packages being installed systemwide. This has a tendency to break
		# python-exec if setuptools gets installed or upgraded.
		sed -e 's|options.upgrade_strategy|options.upgrade_strategy\n\n        if not options.use_user_site and not options.target_dir and not options.root_path and not options.prefix_path:\n            raise CommandError("(Gentoo) Please run pip with the --user option to avoid breaking python-exec")\n|' \
			-i src/pip/_internal/commands/install.py || die
	fi
	distutils-r1_python_prepare_all
}

python_compile_all() {
	# 'pip completion' command embeds full $0 into completion script, which confuses
	# 'complete' and causes QA warning when running as "${PYTHON} -m pip".
	# This trick sets correct $0 while still calling just installed pip.
	local pipcmd='import sys; sys.argv[0] = "pip"; __file__ = ""; from pip._internal.cli.main import main; sys.exit(main())'
	${EPYTHON} -c "${pipcmd}" completion --bash > completion.bash || die
	${EPYTHON} -c "${pipcmd}" completion --zsh > completion.zsh || die
}

python_install_all() {
	# Prevent dbus auto-launch
	# https://bugs.gentoo.org/692178
	export DBUS_SESSION_BUS_ADDRESS="disabled:"
	local DOCS=( AUTHORS.txt docs/html/**/*.rst )
	distutils-r1_python_install_all
	newbashcomp completion.bash ${PN}
	insinto /usr/share/zsh/site-functions
	newins completion.zsh _pip
}
