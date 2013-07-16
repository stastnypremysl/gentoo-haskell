# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Rose trees with cached and accumulating monoidal annotations"
HOMEPAGE="http://hackage.haskell.org/package/dual-tree"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/monoid-extras-0.2:=[profile?]
		<dev-haskell/monoid-extras-0.4:=[profile?]
		=dev-haskell/newtype-0.2*:=[profile?]
		>=dev-haskell/semigroups-0.8:=[profile?]
		<dev-haskell/semigroups-0.10:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"
