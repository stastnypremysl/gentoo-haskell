# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit eutils haskell-cabal

DESCRIPTION="The Haskell-Scriptable Editor"
HOMEPAGE="http://haskell.org/haskellwiki/Yi"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gnome gtk vty"

RDEPEND="=dev-haskell/binary-0.5*
		<dev-haskell/cabal-1.15
		=dev-haskell/cautious-file-1.0*
		=dev-haskell/concrete-typerep-0.1*
		<dev-haskell/data-accessor-0.3
		=dev-haskell/data-accessor-monads-fd-0.2*
		<dev-haskell/data-accessor-template-0.2.2
		>dev-haskell/derive-2.4
		=dev-haskell/diff-0.1*
		>=dev-haskell/dlist-0.4.1
		>=dev-haskell/dyre-0.7
		<dev-haskell/fingertree-0.1
		=dev-haskell/ghc-paths-0.1*
		<dev-haskell/hashable-1.2
		>dev-haskell/hint-0.3.1
		>=dev-haskell/monads-fd-0.1.0.1
		<dev-haskell/pointedlist-0.4
		>=dev-haskell/puremd5-0.2.3
		>=dev-haskell/quickcheck-2.1.0.2
		=dev-haskell/regex-base-0.93*
		=dev-haskell/regex-tdfa-1.1*
		<dev-haskell/rosezipper-0.3
		=dev-haskell/split-0.1*
		<dev-haskell/time-1.5
		dev-haskell/uniplate
		<dev-haskell/unix-compat-0.4
		>=dev-haskell/unordered-containers-0.1
		>=dev-haskell/utf8-string-0.3.1
		<dev-haskell/vty-5
		>=dev-lang/ghc-6.10.1
		=dev-haskell/data-accessor-mtl-0.2*
		vty? ( =dev-haskell/vty-4* )
		gtk? ( =dev-haskell/glib-0.12*
			   =dev-haskell/gtk-0.12*
			   gnome? ( =dev-haskell/gconf-0.12* ) )"
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.10"

src_prepare() {
	if has_version "<dev-lang/ghc-7.0.1"; then
		if use gtk; then
			die "yi removed support for 6.12.3, backport does not work with gtk use flag"
		fi
		epatch "${FILESDIR}/${PN}-0.6.4.0-backport-to-ghc-6.12.3.patch"
	fi
	epatch "${FILESDIR}/${P}-fix-haddock-2.10.0.patch"
}

src_configure() {
	cabal_src_configure \
		--flags=-testing \
		$(cabal_flag gtk pango) \
		$(cabal_flag gnome) \
		$(cabal_flag vty)

	use gtk || use vty || ewarn "${PN} requires either USE=gtk or USE=vty to build a user interface."
}
