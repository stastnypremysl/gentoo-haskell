# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="RefSerialize"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Write to and read from ByteStrings maintaining internal memory references"
HOMEPAGE="https://hackage.haskell.org/package/RefSerialize"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/hashtables:=[profile?]
	dev-haskell/stringsearch:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	dev-haskell/cabal
"

S="${WORKDIR}/${MY_P}"
