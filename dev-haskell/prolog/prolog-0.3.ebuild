# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Prolog interpreter written in Haskell"
HOMEPAGE="https://hackage.haskell.org/package/prolog"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0.1.0:=[profile?]
	>=dev-haskell/parsec-3.1.1:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	>=dev-haskell/th-lift-0.5.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
