# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils kodi-addon

DESCRIPTION="Crystalmorph screensaver for Kodi"
HOMEPAGE="https://github.com/notspiff/screensaver.crystalmorph"
SRC_URI=""

case ${PV} in
9999)
	SRC_URI=""
	EGIT_REPO_URI="git://github.com/notspiff/screensaver.crystalmorph.git"
	inherit git-r3
	;;
*)
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/notspiff/screensaver.crystalmorph/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/screensaver.crystalmorph-${PV}"
	;;
esac

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	media-tv/kodi
	"
