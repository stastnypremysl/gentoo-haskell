# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Create Vega-Lite visualizations (version 4) in Haskell"
HOMEPAGE="https://github.com/DougBurke/hvega"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="tools"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	tools? ( >=dev-haskell/aeson-pretty-0.8:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
			>=dev-haskell/http-conduit-2.3:=[profile?] <dev-haskell/http-conduit-2.4:=[profile?]
			>=dev-haskell/tagsoup-0.14:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/aeson-1.4.2
		dev-haskell/tasty
		>=dev-haskell/tasty-golden-2.2 <dev-haskell/tasty-golden-2.4
		!tools? ( >=dev-haskell/aeson-pretty-0.8 <dev-haskell/aeson-pretty-0.9 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag tools tools)
}
