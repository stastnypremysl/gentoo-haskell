# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -allwarnings,+separatesyb,+usebytestrings,+splitbase,+iecfpextension

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Analysis and generation of C code"
HOMEPAGE="https://visq.github.io/language-c/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.2.7.1
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/happy
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-allwarnings \
		--flag=iecfpextension \
		--flag=separatesyb \
		--flag=splitbase \
		--flag=usebytestrings
}