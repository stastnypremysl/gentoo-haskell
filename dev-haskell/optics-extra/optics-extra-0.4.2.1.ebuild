# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Extra utilities and instances for optics-core"
HOMEPAGE="https://hackage.haskell.org/package/optics-extra"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/hashable-1.1.1:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-haskell/indexed-profunctors-0.1:=[profile?] <dev-haskell/indexed-profunctors-0.2:=[profile?]
	>=dev-haskell/indexed-traversable-instances-0.1:=[profile?] <dev-haskell/indexed-traversable-instances-0.2:=[profile?]
	>=dev-haskell/optics-core-0.4.1:=[profile?] <dev-haskell/optics-core-0.4.2:=[profile?]
	>=dev-haskell/unordered-containers-0.2.6:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"