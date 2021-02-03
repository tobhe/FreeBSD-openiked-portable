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
GH_TAGNAME=		6bdcf9fecfcc32b4528a311977e722b19cdb7f55
DISTVERSION=	g20210203

USE_RC_SUBR= iked
USERS=		_iked
GROUPS=		_iked

post-install:
	${MV} ${STAGEDIR}${PREFIX}/etc/iked.conf \
	    ${STAGEDIR}${PREFIX}/etc/iked.conf.sample
.include <bsd.port.mk>
