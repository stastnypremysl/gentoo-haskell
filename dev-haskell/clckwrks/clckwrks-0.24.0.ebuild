# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A secure, reliable content management system (CMS) and blogging platform"
HOMEPAGE="http://www.clckwrks.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND=">=dev-haskell/acid-state-0.12:=[profile?] <dev-haskell/acid-state-0.15:=[profile?]
	>=dev-haskell/aeson-qq-0.7:=[profile?] <dev-haskell/aeson-qq-0.9:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/cereal-0.4:=[profile?] <dev-haskell/cereal-0.6:=[profile?]
	>=dev-haskell/happstack-authenticate-2.3:=[profile?] <dev-haskell/happstack-authenticate-2.4:=[profile?]
	>=dev-haskell/happstack-hsp-7.3:=[profile?] <dev-haskell/happstack-hsp-7.4:=[profile?]
	>=dev-haskell/happstack-jmacro-7.0:=[profile?] <dev-haskell/happstack-jmacro-7.1:=[profile?]
	>=dev-haskell/happstack-server-7.0:=[profile?] <dev-haskell/happstack-server-7.5:=[profile?]
	>=dev-haskell/happstack-server-tls-7.1:=[profile?] <dev-haskell/happstack-server-tls-7.2:=[profile?]
	>=dev-haskell/hsp-0.9:=[profile?] <dev-haskell/hsp-0.11:=[profile?]
	>=dev-haskell/hsx-jmacro-7.3:=[profile?] <dev-haskell/hsx-jmacro-7.4:=[profile?]
	>=dev-haskell/hsx2hs-0.13:=[profile?] <dev-haskell/hsx2hs-0.15:=[profile?]
	>=dev-haskell/ixset-1.0:=[profile?] <dev-haskell/ixset-1.1:=[profile?]
	>=dev-haskell/jmacro-0.6:=[profile?] <dev-haskell/jmacro-0.7:=[profile?]
	>=dev-haskell/lens-4.3:=[profile?] <dev-haskell/lens-4.16:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/old-locale-1.0:=[profile?] <dev-haskell/old-locale-1.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/reform-0.2:=[profile?] <dev-haskell/reform-0.3:=[profile?]
	>=dev-haskell/reform-happstack-0.2:=[profile?] <dev-haskell/reform-happstack-0.3:=[profile?]
	>=dev-haskell/reform-hsp-0.2:=[profile?] <dev-haskell/reform-hsp-0.3:=[profile?]
	>=dev-haskell/safecopy-0.6:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/time-locale-compat-0.1:=[profile?] <dev-haskell/time-locale-compat-0.2:=[profile?]
	>=dev-haskell/unordered-containers-0.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/userid-0.1:=[profile?] <dev-haskell/userid-0.2:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/uuid-orphans-1.2:=[profile?] <dev-haskell/uuid-orphans-1.5:=[profile?]
	>=dev-haskell/uuid-types-1.0:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?]
	>=dev-haskell/web-plugins-0.1:=[profile?] <dev-haskell/web-plugins-0.3:=[profile?]
	dev-haskell/web-routes:=[profile?]
	dev-haskell/web-routes-happstack:=[profile?]
	dev-haskell/web-routes-hsp:=[profile?]
	>=dev-haskell/web-routes-th-0.21:=[profile?]
	>=dev-haskell/xss-sanitize-0.3:=[profile?] <dev-haskell/xss-sanitize-0.4:=[profile?]
	>=dev-haskell/aeson-0.11:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dev-libs/openssl:=
	network-uri? ( >dev-haskell/network-2.6:=[profile?] <dev-haskell/network-2.7:=[profile?]
			>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?] )
	!network-uri? ( <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16
	>=dev-haskell/hsx2hs-0.13:=[profile?] <dev-haskell/hsx2hs-0.15:=[profile?]
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
