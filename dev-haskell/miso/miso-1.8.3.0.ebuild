# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999
#hackport: flags: -ios,-jsaddle,-tests

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A tasty Haskell front-end framework"
HOMEPAGE="https://github.com/dmjio/miso"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="jsstring-only"

RDEPEND="
	dev-haskell/aeson:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/http-api-data:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/jsaddle:=[profile?]
	dev-haskell/lucid:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/servant:=[profile?]
	dev-haskell/servant-lucid:=[profile?]
	dev-haskell/tagsoup:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

# Tests are only available for GHCJS. jsaddle flag does nothing except on iOS
src_configure() {
	haskell-cabal_src_configure \
		--flag=-ios \
		--flag=-jsaddle \
		$(cabal_flag jsstring-only jsstring-only) \
		--flag=-tests
}