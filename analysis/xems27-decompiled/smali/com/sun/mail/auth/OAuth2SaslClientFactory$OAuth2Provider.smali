.class Lcom/sun/mail/auth/OAuth2SaslClientFactory$OAuth2Provider;
.super Ljava/security/Provider;
.source "OAuth2SaslClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/auth/OAuth2SaslClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OAuth2Provider"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4a8c7397d8e4c7d3L


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 63
    const-string v0, "JavaMail-OAuth2"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "XOAUTH2 SASL Mechanism"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 64
    const-class v0, Lcom/sun/mail/auth/OAuth2SaslClientFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaslClientFactory.XOAUTH2"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/auth/OAuth2SaslClientFactory$OAuth2Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
