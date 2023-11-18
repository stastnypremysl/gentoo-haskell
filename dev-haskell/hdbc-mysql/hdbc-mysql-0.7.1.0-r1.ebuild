# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HDBC-mysql"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="MySQL driver for HDBC"
HOMEPAGE="https://github.com/ryantm/hdbc-mysql"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="debug"

RDEPEND=">=dev-haskell/hdbc-2.1.0:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	dev-libs/openssl:0=
	sys-libs/zlib
	dev-db/mysql-connector-c:0=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-cabal-3.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}
