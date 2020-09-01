# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit autotools haskell-cabal

DESCRIPTION="An interface to the GNU readline library"
HOMEPAGE="https://hackage.haskell.org/package/readline"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

PATCHES=("${FILESDIR}"/${P}-tinfo.patch)

src_prepare() {
	default

	# Default setup is not compatible to cabal-3
	rm Setup.hs || die

	eautoconf
}