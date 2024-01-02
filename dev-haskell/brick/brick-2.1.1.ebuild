# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: demos:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A declarative terminal user interface library"
HOMEPAGE="https://github.com/jtdaugherty/brick/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

RDEPEND=">=dev-haskell/bimap-0.5:=[profile?] <dev-haskell/bimap-0.6:=[profile?]
	dev-haskell/config-ini:=[profile?]
	>=dev-haskell/data-clist-0.1:=[profile?]
	>=dev-haskell/microlens-0.3.0.0:=[profile?]
	dev-haskell/microlens-mtl:=[profile?]
	dev-haskell/microlens-th:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-zipper-0.13:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/vty-6.0:=[profile?]
	dev-haskell/vty-crossplatform:=[profile?]
	>=dev-haskell/word-wrap-0.2:=[profile?]
	>=dev-lang/ghc-8.10.6:=
	examples? ( dev-haskell/random:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( dev-haskell/quickcheck
		dev-haskell/vty-unix )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples demos)
}
