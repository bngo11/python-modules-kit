# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python client for Sentry (https://sentry.io)"
HOMEPAGE="https://github.com/getsentry/sentry-python https://pypi.org/project/sentry-sdk/"
SRC_URI="https://files.pythonhosted.org/packages/8e/7f/1b16ab4aee53cc5db976bac12e6df5d562aae3880965200cef812e7121d9/sentry_sdk-2.74.0.tar.gz -> sentry_sdk-2.74.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/sentry_sdk-2.74.0"