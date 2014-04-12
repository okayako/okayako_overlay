# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="KeePass Command Line Interface"
HOMEPAGE="http://kpcli.sourceforge.net/"
SRC_URI="mirror://sourceforge/kpcli/${P}.pl"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="dev-lang/perl
	dev-perl/Clone
	dev-perl/Crypt-Rijndael
	dev-perl/TermReadKey
	dev-perl/Sort-Naturally
	dev-perl/Term-ShellUI
	dev-perl/File-KeePass
	dev-perl/Clipboard
	dev-perl/Capture-Tiny"

src_unpack() {
	mkdir ${S}
	cp ${DISTDIR}/${P}.pl ${S} || die
}

src_install() {
	mv ${S}/${P}.pl ${S}/kpcli || die
	dobin kpcli || die
}
