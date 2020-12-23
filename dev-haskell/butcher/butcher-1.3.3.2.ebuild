# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Chops a command or program invocation into digestable pieces"
HOMEPAGE="https://github.com/lspitzner/butcher/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-haskell/deque-0.3:=[profile?] <dev-haskell/deque-0.5:=[profile?]
	<dev-haskell/extra-1.8:=[profile?]
	<dev-haskell/free-5.2:=[profile?]
	<dev-haskell/microlens-0.5:=[profile?]
	<dev-haskell/microlens-th-0.5:=[profile?]
	<dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/multistate-0.7:=[profile?] <dev-haskell/multistate-0.9:=[profile?]
	<dev-haskell/unsafe-0.1:=[profile?]
	<dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec )
"