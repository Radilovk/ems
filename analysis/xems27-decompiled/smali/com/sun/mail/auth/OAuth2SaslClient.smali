.class public Lcom/sun/mail/auth/OAuth2SaslClient;
.super Ljava/lang/Object;
.source "OAuth2SaslClient.java"

# interfaces
.implements Ljavax/security/sasl/SaslClient;


# instance fields
.field private cbh:Ljavax/security/auth/callback/CallbackHandler;

.field private complete:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 1
    .param p2, "cbh"    # Ljavax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljavax/security/auth/callback/CallbackHandler;",
            ")V"
        }
    .end annotation

    .line 67
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->complete:Z

    .line 69
    iput-object p2, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->cbh:Ljavax/security/auth/callback/CallbackHandler;

    .line 70
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 8
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->complete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    new-array v0, v1, [B

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljavax/security/auth/callback/NameCallback;

    const-string v2, "User name:"

    invoke-direct {v0, v2}, Ljavax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "ncb":Ljavax/security/auth/callback/NameCallback;
    new-instance v2, Ljavax/security/auth/callback/PasswordCallback;

    const-string v3, "OAuth token:"

    invoke-direct {v2, v3, v1}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 90
    .local v2, "pcb":Ljavax/security/auth/callback/PasswordCallback;
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->cbh:Ljavax/security/auth/callback/CallbackHandler;

    const/4 v4, 0x2

    new-array v4, v4, [Ljavax/security/auth/callback/Callback;

    aput-object v0, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-interface {v3, v4}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
    :try_end_0
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    nop

    .line 102
    invoke-virtual {v0}, Ljavax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "user":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 104
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "user="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u0001auth=Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u0001\u0001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "resp":Ljava/lang/String;
    :try_start_1
    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .local v6, "response":[B
    goto :goto_0

    .end local v6    # "response":[B
    :catch_0
    move-exception v6

    .line 111
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    move-object v6, v7

    .line 113
    .local v6, "response":[B
    :goto_0
    iput-boolean v1, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->complete:Z

    .line 114
    return-object v6

    .line 93
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "resp":Ljava/lang/String;
    .end local v6    # "response":[B
    :catch_1
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljavax/security/sasl/SaslException;

    const-string v4, "Callback handler failed"

    invoke-direct {v3, v4, v1}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 92
    .local v1, "ex":Ljavax/security/auth/callback/UnsupportedCallbackException;
    new-instance v3, Ljavax/security/sasl/SaslException;

    const-string v4, "Unsupported callback"

    invoke-direct {v3, v4, v1}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "XOAUTH2"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .line 136
    iget-boolean v0, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->complete:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAUTH2 getNegotiatedProperty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasInitialResponse()Z
    .locals 1

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/sun/mail/auth/OAuth2SaslClient;->complete:Z

    return v0
.end method

.method public unwrap([BII)[B
    .locals 2
    .param p1, "incoming"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAUTH2 unwrap not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .param p1, "outgoing"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAUTH2 wrap not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
