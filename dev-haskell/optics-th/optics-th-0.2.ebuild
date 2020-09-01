# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Optics construction using TemplateHaskell"
HOMEPAGE="https://hackage.haskell.org/package/optics-th"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optics-core-0.2:=[profile?] <dev-haskell/optics-core-0.3:=[profile?]
	>=dev-haskell/th-abstraction-0.2.1:=[profile?] <dev-haskell/th-abstraction-0.4:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
