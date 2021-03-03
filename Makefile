# $FreeBSD: head/security/openiked-portable/Makefile david@lapinbilly.eu

PORTNAME=openiked-portable
CATEGORIES=	security net

MAINTAINER=	portmgr@FreeBSD.org
COMMENT=	IKEv2 daemon

LICENSE=	ISCL

LIB_DEPENDS=	libevent.so:devel/libevent

USES=		cmake ssl

USE_GITHUB=		yes
GH_ACCOUNT=		openiked
GH_TAGNAME=		816319952793ca5db966bd2f225ac6da02732ee8
DISTVERSION=	g20210303

USE_RC_SUBR= iked
USERS=		_iked
GROUPS=		_iked

post-install:
	${MV} ${STAGEDIR}${PREFIX}/etc/iked.conf \
	    ${STAGEDIR}${PREFIX}/etc/iked.conf.sample
.include <bsd.port.mk>
