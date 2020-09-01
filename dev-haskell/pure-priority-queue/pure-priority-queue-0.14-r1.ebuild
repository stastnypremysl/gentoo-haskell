# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A pure priority queue"
HOMEPAGE="https://hackage.haskell.org/package/pure-priority-queue"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'base >= 3.0.3.1 && < 4' 'base >= 3.0.3.1'
}
