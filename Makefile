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
GH_TAGNAME=		c7566fbd36f5b762887a8b13a66ddf4f31023a6d
DISTVERSION=	g20210222

USE_RC_SUBR= iked
USERS=		_iked
GROUPS=		_iked

post-install:
	${MV} ${STAGEDIR}${PREFIX}/etc/iked.conf \
	    ${STAGEDIR}${PREFIX}/etc/iked.conf.sample
.include <bsd.port.mk>
