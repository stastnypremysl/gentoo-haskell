# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tool for refactoring expressions into pointfree form"
HOMEPAGE="https://hackage.haskell.org/package/pointfree"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haskell-src-exts-1.20:=[profile?] <dev-haskell/haskell-src-exts-1.21:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hunit-1.6 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck >= 2.11 && < 2.13' 'QuickCheck >= 2.11'
}
