# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Size tagged vectors"
HOMEPAGE="https://github.com/expipiplus1/vector-sized#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/adjunctions-4.3:=[profile?] <dev-haskell/adjunctions-4.5:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-6:=[profile?]
	>=dev-haskell/distributive-0.5:=[profile?] <dev-haskell/distributive-0.7:=[profile?]
	>=dev-haskell/finite-typelits-0.1:=[profile?]
	>=dev-haskell/hashable-1.2.4.0:=[profile?]
	>=dev-haskell/indexed-list-literals-0.2.0.0:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?] <dev-haskell/primitive-0.9:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"