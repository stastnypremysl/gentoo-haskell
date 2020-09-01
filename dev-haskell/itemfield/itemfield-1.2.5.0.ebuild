# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A brick Widget for selectable summary of many elements on a terminal"
HOMEPAGE="https://hackage.haskell.org/package/itemfield"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# OnRmt fails to build against this version
#KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default:=[profile?]
	<dev-haskell/microlens-0.5:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	dev-haskell/vty:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/brick-0.17:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/hunit
		dev-haskell/microlens-th
		dev-haskell/quickcheck
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2 )
"
