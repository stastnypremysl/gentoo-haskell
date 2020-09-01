# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.14

EAPI="4"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A a cross-platform means of determining the hostname"
HOMEPAGE="https://hackage.haskell.org/package/hostname"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"
