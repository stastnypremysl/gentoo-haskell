# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="test-suite"
inherit haskell-cabal

DESCRIPTION="Hackage and Portage integration tool"
HOMEPAGE="http://hackage.haskell.org/package/hackport"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests are broken: need path to ebuild tree

RDEPEND="dev-haskell/async:=
	dev-haskell/base16-bytestring:=
	dev-haskell/base64-bytestring:=
	dev-haskell/cryptohash:=
	dev-haskell/ed25519:=
	dev-haskell/extensible-exceptions:=
	dev-haskell/hashable:=
	>=dev-haskell/http-4000.0.3:=
	dev-haskell/missingh:=
	dev-haskell/mtl:=
	>=dev-haskell/network-2.6:=
	>=dev-haskell/network-uri-2.6:=
	dev-haskell/old-locale:=
	dev-haskell/old-time:=
	dev-haskell/parsec:=
	dev-haskell/random:=
	dev-haskell/regex-compat:=
	dev-haskell/split:=
	dev-haskell/stm:=
	>=dev-haskell/tar-0.5:=
	>=dev-haskell/xml-1.3.7:=
	dev-haskell/zlib:=
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hunit )
"

src_install() {
	haskell-cabal_src_install
	doman man/hackport.1
}
