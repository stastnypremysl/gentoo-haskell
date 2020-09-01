# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dhall to Nix compiler"
HOMEPAGE="https://hackage.haskell.org/package/dhall-nix"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/data-fix-0.3:=[profile?]
	>=dev-haskell/dhall-1.31:=[profile?] <dev-haskell/dhall-1.34:=[profile?]
	>=dev-haskell/hnix-0.7:=[profile?] <dev-haskell/hnix-0.10:=[profile?]
	>=dev-haskell/lens-family-core-1.0.0:=[profile?] <dev-haskell/lens-family-core-2.2:=[profile?]
	<dev-haskell/neat-interpolation-0.6:=[profile?]
	>=dev-haskell/optparse-generic-1.1.1:=[profile?] <dev-haskell/optparse-generic-1.5:=[profile?]
	>=dev-haskell/text-0.8.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
