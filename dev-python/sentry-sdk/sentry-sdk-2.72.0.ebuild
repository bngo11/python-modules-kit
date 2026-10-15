# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for Sentry (https://sentry.io)"
HOMEPAGE="https://github.com/getsentry/sentry-python https://pypi.org/project/sentry-sdk/"
SRC_URI="https://files.pythonhosted.org/packages/26/c1/d2bbb2b03bdc2ef14b35e02b647b8489156c50b6e0b8bacc5fa303902e23/sentry_sdk-2.72.0.tar.gz -> sentry_sdk-2.72.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/sentry_sdk-2.72.0"