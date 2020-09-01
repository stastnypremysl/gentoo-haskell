# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Perform refactorings specified by the refact library"
HOMEPAGE="https://hackage.haskell.org/package/apply-refact"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/extra-1.7.3:=[profile?]
	dev-haskell/filemanip:=[profile?]
	>=dev-haskell/ghc-exactprint-0.6.3.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.15.1.0:=[profile?]
	>=dev-haskell/refact-0.2:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	>=dev-lang/ghc-8.6:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/silently
		dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		dev-haskell/tasty-golden )
"
