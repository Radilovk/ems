.class public Lcom/sun/mail/auth/OAuth2SaslClientFactory;
.super Ljava/lang/Object;
.source "OAuth2SaslClientFactory.java"

# interfaces
.implements Ljavax/security/sasl/SaslClientFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/auth/OAuth2SaslClientFactory$OAuth2Provider;
    }
.end annotation


# static fields
.field private static final MECHANISM_NAME:Ljava/lang/String; = "SaslClientFactory.XOAUTH2"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "JavaMail-OAuth2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .line 91
    :try_start_0
    const-string v0, "JavaMail-OAuth2"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/sun/mail/auth/OAuth2SaslClientFactory$OAuth2Provider;

    invoke-direct {v0}, Lcom/sun/mail/auth/OAuth2SaslClientFactory$OAuth2Provider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;
    .locals 4
    .param p1, "mechanisms"    # [Ljava/lang/String;
    .param p2, "authorizationId"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "serverName"    # Ljava/lang/String;
    .param p6, "cbh"    # Ljavax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljavax/security/auth/callback/CallbackHandler;",
            ")",
            "Ljavax/security/sasl/SaslClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 73
    .local p5, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    aget-object v2, p1, v1

    .line 74
    .local v2, "m":Ljava/lang/String;
    const-string v3, "XOAUTH2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    new-instance v0, Lcom/sun/mail/auth/OAuth2SaslClient;

    invoke-direct {v0, p5, p6}, Lcom/sun/mail/auth/OAuth2SaslClient;-><init>(Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)V

    return-object v0

    .line 73
    .end local v2    # "m":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "XOAUTH2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
