# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell Server Pages is a library for writing dynamic server-side web pages"
HOMEPAGE="http://hub.darcs.net/nibro/hsp"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+base4"

RDEPEND="dev-haskell/mtl:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag base4 base4)
}
