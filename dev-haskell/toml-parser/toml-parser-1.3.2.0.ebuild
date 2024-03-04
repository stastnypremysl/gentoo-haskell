# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="TOML 1.0.0 parser"
HOMEPAGE="https://hackage.haskell.org/package/toml-parser"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RESTRICT=test # build log: 'ghc: could not execute: markdown-unlit'

RDEPEND=">=dev-haskell/prettyprinter-1.7:=[profile?] <dev-haskell/prettyprinter-1.8:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-3:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/alex-3.2
	>=dev-haskell/cabal-3.4.1.0
	>=dev-haskell/happy-1.19
"
#	test? ( || ( ( >=dev-haskell/hspec-2.10 <dev-haskell/hspec-2.11 )
#			( >=dev-haskell/hspec-2.11 <dev-haskell/hspec-2.12 ) ) )
#"