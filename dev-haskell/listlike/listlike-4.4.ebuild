# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="ListLike"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Generic support for list-like structures"
HOMEPAGE="https://github.com/JohnLato/listlike"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dlist-0.7:=[profile?] <dev-haskell/dlist-0.9:=[profile?]
	>=dev-haskell/fmlist-0.8:=[profile?] <dev-haskell/fmlist-0.10:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-haskell/vector-0.5:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3
		>=dev-haskell/random-1 <dev-haskell/random-2 )
"

S="${WORKDIR}/${MY_P}"

PATCHES=(
	"${FILESDIR}"/${PN}-4.2.1-QC-2.8.2.patch
	"${FILESDIR}"/${PN}-4.2.1-ghc-8.patch
)
