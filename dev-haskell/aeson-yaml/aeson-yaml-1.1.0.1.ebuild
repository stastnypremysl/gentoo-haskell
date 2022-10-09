# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Output any Aeson value as YAML (pure Haskell library)"
HOMEPAGE="https://github.com/clovyr/aeson-yaml"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="build-binaries"

RDEPEND=">=dev-haskell/aeson-0.4.0.0:=[profile?] <dev-haskell/aeson-2.1:=[profile?]
	>=dev-haskell/text-0.1:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/unordered-containers-0.1.0.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.1:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/string-qq
		dev-haskell/tasty
		dev-haskell/tasty-discover
		dev-haskell/tasty-hunit
		dev-haskell/yaml )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag build-binaries build-binaries)
}