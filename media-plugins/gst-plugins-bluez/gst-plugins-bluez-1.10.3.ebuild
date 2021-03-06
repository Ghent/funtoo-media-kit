# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
GST_ORG_MODULE=gst-plugins-bad

inherit gstreamer

DESCRIPTION="AVDTP source/sink and A2DP sink plugin for GStreamer"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=net-wireless/bluez-5[${MULTILIB_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-util/gdbus-codegen
"
