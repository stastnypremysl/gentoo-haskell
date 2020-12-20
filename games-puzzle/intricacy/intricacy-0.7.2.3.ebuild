# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild originally generated by hackport 0.5.6.9999
#hackport: flags: +game

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="A game of competitive puzzle-design"
HOMEPAGE="http://mbays.freeshell.org/intricacy"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+curses +sdl server +sound"

RDEPEND=">=dev-haskell/crypto-api-0.10:=
	>=dev-haskell/crypto-pubkey-types-0.2:=
	>=dev-haskell/cryptohash-0.8:=
	>=dev-haskell/mtl-2.2:=
	>=dev-haskell/network-fancy-0.1.5:=
	>=dev-haskell/rsa-2.0:=
	>=dev-haskell/safe-0.2:=
	>=dev-haskell/stm-2.1:=
	>=dev-haskell/vector-0.9:=
	>=dev-lang/ghc-7.10.1:=
	curses? ( >=dev-haskell/hscurses-1.4:=
		sys-libs/ncurses[unicode] )
	sdl? ( >=dev-haskell/sdl-0.6.5:=
		>=dev-haskell/sdl-gfx-0.6:=
		>=dev-haskell/sdl-ttf-0.6:=
		sound? ( >=dev-haskell/random-1.0:=
			>=dev-haskell/sdl-mixer-0.6:= )
		!sound? ( server? ( >=dev-haskell/random-1.0:= ) ) )
	!sdl? ( server? ( >=dev-haskell/random-1.0:= ) )
	server? ( >=dev-haskell/email-validate-1.0:=
			>=dev-haskell/feed-1.1:=
			>=dev-haskell/pipes-4:=
			>=dev-haskell/smtp-mail-0.1.4.1:=
			dev-haskell/text:=
			>=dev-haskell/xml-conduit-1.0:= )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag curses curses) \
		--flag=game \
		$(cabal_flag sdl sdl) \
		$(cabal_flag server server) \
		$(cabal_flag sound sound)
}