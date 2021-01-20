# $FreeBSD: head/security/openiked/Makefile 547543 2020-09-04 14:33:16Z swills $

PORTNAME=openiked-portable
CATEGORIES=	security net

MAINTAINER=	portmgr@FreeBSD.org
COMMENT=	IKEv2 daemon

LICENSE=	ISCL

LIB_DEPENDS=	libevent.so:devel/libevent 

USES=		cmake 

USE_GITHUB=	yes
GH_ACCOUNT=	openiked
GH_TAGNAME=45352722b7320ed97c6abe3bd961bea5acccf43d
DISTVERSION=	g20210119

USE_RC_SUBR= iked
USERS=		_iked
GROUPS=		_iked

.include <bsd.port.mk>
