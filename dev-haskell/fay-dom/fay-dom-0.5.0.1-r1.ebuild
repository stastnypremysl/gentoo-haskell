# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="DOM FFI wrapper library for Fay"
HOMEPAGE="https://github.com/faylang/fay-dom"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/fay-base-0.19.4.0:=[profile?] <dev-haskell/fay-base-0.22:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	default

	#as per https://hackage.haskell.org/package/fay-dom-0.5.0.1/revisions/
	cabal_chdeps \
		'fay-base >= 0.19.4.0 && < 0.21' 'fay-base >= 0.19.4.0 && < 0.22'
}
