# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Frontend for video metadata tagging tools"
HOMEPAGE="https://github.com/pjones/vimeta"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/byline-1.0:=[profile?] <dev-haskell/byline-1.2:=[profile?]
	>=dev-haskell/exceptions-0.10:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/http-client-0.4.30:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.2.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.11:=[profile?] <dev-haskell/optparse-applicative-0.17:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/relude-0.6:=[profile?] <dev-haskell/relude-0.8:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/themoviedb-1.2:=[profile?] <dev-haskell/themoviedb-1.3:=[profile?]
	>=dev-haskell/yaml-0.8:=[profile?] <dev-haskell/yaml-0.12:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2
"
