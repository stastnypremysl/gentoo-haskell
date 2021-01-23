# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dependent finite maps (partial dependent products)"
HOMEPAGE="https://github.com/obsidiansystems/dependent-map"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/constraints-extras-0.2.3.0:=[profile?] <dev-haskell/constraints-extras-0.4:=[profile?]
	>=dev-haskell/dependent-sum-0.6.1:=[profile?] <dev-haskell/dependent-sum-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
