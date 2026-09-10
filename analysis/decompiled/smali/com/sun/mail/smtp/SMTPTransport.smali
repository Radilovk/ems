.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/smtp/SMTPTransport$Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final UNKNOWN_SA:[Ljava/lang/String;

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private authenticators:Ljava/util/Map;

.field private authorizationID:Ljava/lang/String;

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private defaultAuthenticationMechanisms:Ljava/lang/String;

.field private defaultPort:I

.field private enableSASL:Z

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;

.field private host:Ljava/lang/String;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private noauthdebug:Z

.field private noopStrict:Z

.field private notificationDone:Z

.field private ntlmDomain:Ljava/lang/String;

.field private quitWait:Z

.field private reportSuccess:Z

.field private requireStartTLS:Z

.field private saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private useCanonicalHostName:Z

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    const-string v3, "Bcc"

    aput-object v3, v0, v2

    const-string v3, "Content-Length"

    aput-object v3, v0, v1

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    .line 143
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    .line 145
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    .line 2433
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    .line 2436
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    .line 143
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 2433
    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .prologue
    .line 155
    const-string v0, "smtp"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .prologue
    const/16 v8, 0x19

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 91
    const-string v3, "smtp"

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 92
    iput v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 93
    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 102
    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 111
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    .line 114
    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 116
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 117
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 118
    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 119
    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 120
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 122
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 128
    iput-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 139
    iput-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 169
    new-instance v3, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "DEBUG SMTP"

    invoke-direct {v3, v6, v7, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 170
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "protocol"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 172
    const-string v3, "mail.debug.auth"

    .line 171
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    .line 172
    if-eqz v3, :cond_4

    move v3, v4

    .line 171
    :goto_0
    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 173
    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 175
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 176
    if-nez p4, :cond_1

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".ssl.enable"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result p4

    .line 179
    :cond_1
    if-eqz p4, :cond_5

    .line 180
    const/16 v3, 0x1d1

    iput v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 183
    :goto_1
    iput-boolean p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".quitwait"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {p1, v3, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".reportsuccess"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".starttls.enable"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".starttls.required"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".userset"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".noop.strict"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {p1, v3, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".sasl.enable"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 214
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "enable SASL"

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 217
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".sasl.usecanonicalhostname"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {p1, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 218
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    if-eqz v3, :cond_3

    .line 219
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v6, "use canonical host name"

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 222
    :cond_3
    const/4 v3, 0x4

    new-array v0, v3, [Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    .line 223
    new-instance v3, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;

    invoke-direct {v3, p0}, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v3, v0, v4

    .line 224
    new-instance v3, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;

    invoke-direct {v3, p0}, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v3, v0, v5

    const/4 v3, 0x2

    .line 225
    new-instance v4, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;

    invoke-direct {v4, p0}, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    .line 226
    new-instance v4, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;

    invoke-direct {v4, p0}, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v4, v0, v3

    .line 228
    .local v0, "a":[Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, v0

    if-lt v1, v3, :cond_6

    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 234
    return-void

    .end local v0    # "a":[Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    move v3, v5

    .line 172
    goto/16 :goto_0

    .line 182
    :cond_5
    iput v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    goto/16 :goto_1

    .line 230
    .restart local v0    # "a":[Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    .restart local v1    # "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .locals 1

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0

    .prologue
    .line 2145
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    return-void
.end method

.method static synthetic access$4(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return-void
.end method

.method static synthetic access$5(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0

    .prologue
    .line 2135
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    return-void
.end method

.method static synthetic access$6(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    return-object v0
.end method

.method private addressesFailed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1263
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v0, v1, [Ljavax/mail/Address;

    .line 1267
    .local v0, "newa":[Ljavax/mail/Address;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1268
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    .line 1267
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1270
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    .line 1269
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1272
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1278
    .end local v0    # "newa":[Ljavax/mail/Address;
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1275
    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_0
.end method

.method private authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".auth.mechanisms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 758
    .local v11, "mechs":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 759
    iget-object v11, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getAuthorizationId()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "authzid":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 763
    move-object v3, p1

    .line 764
    :cond_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Authenticate with SASL"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 767
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLMechanisms()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 768
    if-eqz v0, :cond_2

    .line 769
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "SASL authentication failed"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/4 v0, 0x0

    goto :goto_0

    .line 774
    :catch_0
    move-exception v9

    .line 775
    .local v9, "ex":Ljava/lang/UnsupportedOperationException;
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "SASL support failed"

    invoke-virtual {v0, v1, v2, v9}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    .end local v9    # "ex":Ljava/lang/UnsupportedOperationException;
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to authenticate using mechanisms: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 789
    :cond_4
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 790
    .local v12, "st":Ljava/util/StringTokenizer;
    :cond_5
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_6

    .line 818
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 819
    const-string v1, "No authentication mechanisms supported by both server and client"

    .line 818
    invoke-direct {v0, v1}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_6
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 792
    .local v10, "m":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".auth."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".disable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, "dprop":Ljava/lang/String;
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v7

    .line 796
    .local v7, "disabled":Z
    if-eqz v7, :cond_7

    .line 797
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mechanism "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disabled by property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 802
    :cond_7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 803
    invoke-virtual {p0, v10}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 804
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "mechanism {0} not supported by server"

    invoke-virtual {v0, v1, v2, v10}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 808
    :cond_8
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    .line 809
    .local v6, "a":Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    if-nez v6, :cond_9

    .line 810
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "no authenticator for mechanism {0}"

    invoke-virtual {v0, v1, v2, v10}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 814
    :cond_9
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v6, v0, v3, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private closeConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1303
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    :cond_0
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1309
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1310
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1311
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1312
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1313
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1315
    :cond_1
    return-void

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Server Close Failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 1308
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1309
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1310
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1311
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1312
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1313
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1314
    :cond_2
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .locals 8
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .prologue
    .line 1441
    const/4 v0, 0x0

    .line 1443
    .local v0, "changed":Z
    :try_start_0
    const-string v6, "text/*"

    invoke-interface {p1, v6}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1444
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "enc":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v6, "quoted-printable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1446
    const-string v6, "base64"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    if-eqz v6, :cond_2

    .line 1447
    :cond_0
    const/4 v4, 0x0

    .line 1449
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1450
    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1460
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v6

    .line 1461
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 1460
    invoke-interface {p1, v6, v7}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1462
    const-string v6, "Content-Transfer-Encoding"

    const-string v7, "8bit"

    invoke-interface {p1, v6, v7}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    const/4 v0, 0x1

    .line 1466
    :cond_1
    if-eqz v4, :cond_2

    .line 1468
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1488
    .end local v2    # "enc":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_0
    return v0

    .line 1465
    .restart local v2    # "enc":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .line 1466
    if-eqz v4, :cond_3

    .line 1468
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1473
    :cond_3
    :goto_1
    :try_start_4
    throw v6

    .line 1483
    .end local v2    # "enc":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1475
    :cond_4
    const-string v6, "multipart/*"

    invoke-interface {p1, v6}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1476
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/internet/MimeMultipart;

    .line 1477
    .local v5, "mp":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v1

    .line 1478
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1479
    invoke-virtual {v5, v3}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v6

    check-cast v6, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v6

    if-eqz v6, :cond_5

    .line 1480
    const/4 v0, 0x1

    .line 1478
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1469
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v5    # "mp":Ljavax/mail/internet/MimeMultipart;
    .restart local v2    # "enc":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_0

    .line 1485
    .end local v2    # "enc":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method private expandGroups()V
    .locals 9

    .prologue
    .line 1393
    const/4 v1, 0x0

    .line 1394
    .local v1, "groups":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v8, v8

    if-lt v2, v8, :cond_1

    .line 1423
    if-eqz v1, :cond_0

    .line 1424
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v6, v8, [Ljavax/mail/internet/InternetAddress;

    .line 1425
    .local v6, "newa":[Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v1, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1426
    iput-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1428
    .end local v6    # "newa":[Ljavax/mail/internet/InternetAddress;
    :cond_0
    return-void

    .line 1395
    :cond_1
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v0, v8, v2

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .line 1396
    .local v0, "a":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1397
    if-nez v1, :cond_2

    .line 1399
    new-instance v1, Ljava/util/Vector;

    .end local v1    # "groups":Ljava/util/Vector;
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1400
    .restart local v1    # "groups":Ljava/util/Vector;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-lt v5, v2, :cond_4

    .line 1405
    .end local v5    # "k":I
    :cond_2
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 1406
    .local v3, "ia":[Ljavax/mail/internet/InternetAddress;
    if-eqz v3, :cond_6

    .line 1407
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v8, v3
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v8, :cond_5

    .line 1394
    .end local v3    # "ia":[Ljavax/mail/internet/InternetAddress;
    .end local v4    # "j":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1401
    .restart local v5    # "k":I
    :cond_4
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v8, v8, v5

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1400
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1408
    .end local v5    # "k":I
    .restart local v3    # "ia":[Ljavax/mail/internet/InternetAddress;
    .restart local v4    # "j":I
    :cond_5
    :try_start_1
    aget-object v8, v3, v4

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1407
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1410
    .end local v4    # "j":I
    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1411
    .end local v3    # "ia":[Ljavax/mail/internet/InternetAddress;
    :catch_0
    move-exception v7

    .line 1413
    .local v7, "pex":Ljavax/mail/internet/ParseException;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1417
    .end local v7    # "pex":Ljavax/mail/internet/ParseException;
    :cond_7
    if-eqz v1, :cond_3

    .line 1418
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private initStreams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 2107
    const-string v2, "mail.debug.quote"

    const/4 v3, 0x0

    .line 2106
    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    .line 2110
    .local v0, "quote":Z
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 2109
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 2111
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 2114
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 2113
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 2115
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 2118
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2117
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2120
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2119
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2121
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2122
    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 1500
    const/4 v2, 0x0

    .line 1501
    .local v2, "linelen":I
    const/4 v3, 0x0

    .line 1503
    .local v3, "need8bit":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "b":I
    if-gez v0, :cond_2

    .line 1520
    if-eqz v3, :cond_1

    .line 1521
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "found an 8bit part"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1522
    .end local v0    # "b":I
    .end local v3    # "need8bit":Z
    :cond_1
    :goto_1
    return v3

    .line 1504
    .restart local v0    # "b":I
    .restart local v3    # "need8bit":Z
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 1505
    const/16 v5, 0xd

    if-eq v0, v5, :cond_3

    const/16 v5, 0xa

    if-ne v0, v5, :cond_5

    .line 1506
    :cond_3
    const/4 v2, 0x0

    .line 1514
    :cond_4
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 1515
    const/4 v3, 0x1

    goto :goto_0

    .line 1507
    :cond_5
    if-nez v0, :cond_6

    move v3, v4

    .line 1508
    goto :goto_1

    .line 1510
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1511
    const/16 v5, 0x3e6

    if-le v2, v5, :cond_4

    move v3, v4

    .line 1512
    goto :goto_1

    .line 1517
    .end local v0    # "b":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    move v3, v4

    .line 1518
    goto :goto_1
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 2360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTracing()Z
    .locals 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2177
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    .local v2, "ret":I
    if-eq v2, p2, :cond_6

    .line 2185
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-nez v1, :cond_4

    move v11, v0

    .line 2186
    .local v11, "vsl":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v1, :cond_5

    move v12, v0

    .line 2187
    .local v12, "vul":I
    :goto_1
    add-int v1, v11, v12

    new-array v10, v1, [Ljavax/mail/Address;

    .line 2188
    .local v10, "valid":[Ljavax/mail/Address;
    if-lez v11, :cond_0

    .line 2189
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-static {v1, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2190
    :cond_0
    if-lez v12, :cond_1

    .line 2191
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v1, v0, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2192
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 2193
    iput-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 2194
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2195
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "got response code "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2196
    const-string v3, ", with response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2195
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2197
    :cond_2
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2198
    .local v9, "_lsr":Ljava/lang/String;
    iget v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2199
    .local v8, "_lrc":I
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    .line 2200
    const-string v0, "RSET"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 2201
    :cond_3
    iput-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2202
    iput v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2203
    new-instance v0, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2204
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v1, p1

    .line 2203
    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    .line 2185
    .end local v8    # "_lrc":I
    .end local v9    # "_lsr":Ljava/lang/String;
    .end local v10    # "valid":[Ljavax/mail/Address;
    .end local v11    # "vsl":I
    .end local v12    # "vul":I
    :cond_4
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v11, v1

    goto :goto_0

    .line 2186
    .restart local v11    # "vsl":I
    :cond_5
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v12, v1

    goto :goto_1

    .line 2206
    .end local v11    # "vsl":I
    :cond_6
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 2365
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2368
    .end local p1    # "addr":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private openServer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2066
    const/4 v1, -0x1

    .line 2067
    .local v1, "port":I
    const-string v3, "UNKNOWN"

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2069
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v1

    .line 2070
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2071
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2072
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "starting protocol to host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2073
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2072
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2075
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2077
    const/4 v2, -0x1

    .line 2078
    .local v2, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    const/16 v3, 0xdc

    if-eq v2, v3, :cond_2

    .line 2079
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 2080
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2081
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2082
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2083
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2084
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2085
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "got bad greeting from host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2086
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2087
    const-string v5, ", response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2085
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2088
    :cond_1
    new-instance v3, Ljavax/mail/MessagingException;

    .line 2089
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got bad greeting from SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2090
    const-string v5, ", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2091
    const-string v5, ", response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2089
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2088
    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    .line 2099
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not start protocol to SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2100
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2099
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2098
    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 2093
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "r":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2094
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "protocol started to host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2095
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2094
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2102
    :cond_3
    return-void
.end method

.method private openServer(Ljava/lang/String;I)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2013
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2014
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "trying to connect to host \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2015
    const-string v7, "\", port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isSSL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2014
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2018
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 2021
    .local v1, "props":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 2020
    invoke-static {p1, p2, v1, v5, v6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2025
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result p2

    .line 2027
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2029
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2031
    const/4 v2, -0x1

    .line 2032
    .local v2, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    const/16 v5, 0xdc

    if-eq v2, v5, :cond_2

    .line 2033
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 2034
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2035
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2036
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2037
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2038
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2039
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "could not connect to host \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2041
    const-string v7, ", response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2039
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2042
    :cond_1
    new-instance v5, Ljavax/mail/MessagingException;

    .line 2043
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not connect to SMTP host: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2044
    const-string v7, ", port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2045
    const-string v7, ", response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2043
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2042
    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2051
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "r":I
    :catch_0
    move-exception v4

    .line 2052
    .local v4, "uhex":Ljava/net/UnknownHostException;
    new-instance v5, Ljavax/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown SMTP host: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 2047
    .end local v4    # "uhex":Ljava/net/UnknownHostException;
    .restart local v1    # "props":Ljava/util/Properties;
    .restart local v2    # "r":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2048
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "connected to host \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2048
    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2059
    :cond_3
    return-void

    .line 2053
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "r":I
    :catch_1
    move-exception v3

    .line 2054
    .local v3, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v5, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v5, v3}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v5

    .line 2055
    .end local v3    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_2
    move-exception v0

    .line 2056
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v5, Ljavax/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not connect to SMTP host: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2056
    invoke-direct {v5, v6, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method private resumeTracing()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2146
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2148
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 2150
    :cond_0
    return-void
.end method

.method private sendCommand([B)V
    .locals 3
    .param p1, "cmdBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2251
    sget-boolean v1, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2256
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2257
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2258
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    return-void

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t send command to SMTP host"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private sendMessageEnd()V
    .locals 0

    .prologue
    .line 2485
    return-void
.end method

.method private sendMessageStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 2484
    return-void
.end method

.method private suspendTracing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2136
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2138
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 2140
    :cond_0
    return-void
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2b

    .line 2459
    const/4 v2, 0x0

    .line 2460
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 2478
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 2461
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2462
    .local v0, "c":C
    const/16 v3, 0x80

    if-lt v0, v3, :cond_2

    .line 2463
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2464
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2463
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2465
    :cond_2
    const/16 v3, 0x21

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7e

    if-gt v0, v3, :cond_3

    if-eq v0, v5, :cond_3

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_6

    .line 2466
    :cond_3
    if-nez v2, :cond_4

    .line 2467
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2468
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2470
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2471
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2472
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v4, v0, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2460
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2474
    :cond_6
    if-eqz v2, :cond_5

    .line 2475
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .prologue
    .line 2354
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2356
    :cond_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1284
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1299
    :goto_0
    monitor-exit p0

    return-void

    .line 1287
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 1288
    const-string v1, "QUIT"

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1289
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v1, :cond_1

    .line 1290
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 1291
    .local v0, "resp":I
    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QUIT failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1297
    .end local v0    # "resp":I
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1284
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1296
    :catchall_1
    move-exception v1

    .line 1297
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 1298
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 299
    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected data()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1965
    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1966
    :cond_0
    const-string v0, "DATA"

    const/16 v1, 0x162

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1967
    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    .line 1968
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xfa

    const/4 v7, 0x0

    .line 1569
    if-eqz p1, :cond_3

    .line 1570
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "EHLO "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1573
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v6

    .line 1575
    .local v6, "resp":I
    if-ne v6, v11, :cond_1

    .line 1578
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1580
    .local v5, "rd":Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    .line 1582
    const/4 v2, 0x1

    .line 1583
    .local v2, "first":Z
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 1604
    .end local v2    # "first":Z
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    if-ne v6, v11, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1572
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v6    # "resp":I
    :cond_3
    const-string v1, "EHLO"

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1584
    .restart local v2    # "first":Z
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "rd":Ljava/io/BufferedReader;
    .restart local v6    # "resp":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1585
    const/4 v2, 0x0

    .line 1586
    goto :goto_1

    .line 1588
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 1590
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1591
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1592
    .local v3, "i":I
    const-string v0, ""

    .line 1593
    .local v0, "arg":Ljava/lang/String;
    if-lez v3, :cond_6

    .line 1594
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1595
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1597
    :cond_6
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1598
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found extension \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\", arg \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1598
    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1600
    :cond_7
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1602
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 1528
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finishData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1979
    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    .line 1981
    const-string v0, "."

    const/16 v1, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1982
    return-void
.end method

.method public declared-synchronized getAuthorizationId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sasl.authorizationid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2399
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getLastReturnCode()I
    .locals 1

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".localhost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".localaddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 253
    :cond_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 254
    .local v0, "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_5
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    .line 265
    :cond_6
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 266
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 267
    .restart local v0    # "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 274
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_7
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 260
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getNTLMDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".auth.ntlm.domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNoopStrict()Z
    .locals 1

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequireStartTLS()Z
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLEnabled()Z
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLMechanisms()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    sget-object v5, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    if-ne v4, v5, :cond_3

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v3, "v":Ljava/util/List;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sasl.mechanisms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SASL mechanisms allowed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 418
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, " ,"

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_4

    .line 425
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 426
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 428
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "v":Ljava/util/List;
    :cond_3
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 429
    const/4 v4, 0x0

    .line 430
    :goto_1
    monitor-exit p0

    return-object v4

    .line 420
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v2    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "v":Ljava/util/List;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "m":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 422
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "v":Ljava/util/List;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 430
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .locals 1

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseCanonicalHostName()Z
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .locals 1

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xfa

    .line 1552
    if-eqz p1, :cond_0

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HELO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1556
    :goto_0
    return-void

    .line 1555
    :cond_0
    const-string v0, "HELO"

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1322
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1368
    :goto_0
    monitor-exit p0

    return v2

    .line 1329
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v3, :cond_2

    .line 1330
    const-string v3, "RSET"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1333
    :goto_1
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    .line 1352
    .local v1, "resp":I
    if-ltz v1, :cond_4

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    if-eqz v3, :cond_3

    const/16 v3, 0xfa

    if-ne v1, v3, :cond_4

    .line 1353
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1332
    .end local v1    # "resp":I
    :cond_2
    const-string v3, "NOOP"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1362
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1365
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1352
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "resp":I
    :cond_3
    const/16 v3, 0x1a5

    if-ne v1, v3, :cond_1

    .line 1356
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1357
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1322
    .end local v1    # "resp":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 2168
    .local v0, "resp":I
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-eq v0, p2, :cond_0

    .line 2169
    new-instance v1, Ljavax/mail/MessagingException;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    .end local v0    # "resp":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2170
    .restart local v0    # "resp":I
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected mailFrom()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1623
    const/4 v4, 0x0

    .line 1624
    .local v4, "from":Ljava/lang/String;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v10, v10, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v10, :cond_0

    .line 1625
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v10, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v4

    .line 1626
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    .line 1627
    :cond_1
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mail."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".from"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1628
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_4

    .line 1631
    :cond_3
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v10}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v3

    .local v3, "fa":[Ljavax/mail/Address;
    if-eqz v3, :cond_e

    .line 1632
    array-length v10, v3

    if-lez v10, :cond_e

    .line 1633
    const/4 v10, 0x0

    aget-object v5, v3, v10

    .line 1637
    .end local v3    # "fa":[Ljavax/mail/Address;
    .local v5, "me":Ljavax/mail/Address;
    :goto_0
    if-eqz v5, :cond_f

    .line 1638
    check-cast v5, Ljavax/mail/internet/InternetAddress;

    .end local v5    # "me":Ljavax/mail/Address;
    invoke-virtual {v5}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1644
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MAIL FROM:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, "cmd":Ljava/lang/String;
    const-string v10, "DSN"

    invoke-virtual {p0, v10}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1648
    const/4 v6, 0x0

    .line 1649
    .local v6, "ret":Ljava/lang/String;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v10, v10, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v10, :cond_5

    .line 1650
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v10, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v6

    .line 1651
    :cond_5
    if-nez v6, :cond_6

    .line 1652
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mail."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".dsn.ret"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1654
    :cond_6
    if-eqz v6, :cond_7

    .line 1655
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " RET="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1663
    .end local v6    # "ret":Ljava/lang/String;
    :cond_7
    const-string v10, "AUTH"

    invoke-virtual {p0, v10}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1664
    const/4 v9, 0x0

    .line 1665
    .local v9, "submitter":Ljava/lang/String;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v10, v10, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v10, :cond_8

    .line 1666
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v10, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v9

    .line 1667
    :cond_8
    if-nez v9, :cond_9

    .line 1668
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mail."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".submitter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1670
    :cond_9
    if-eqz v9, :cond_a

    .line 1672
    :try_start_0
    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1673
    .local v8, "s":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AUTH="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1685
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "submitter":Ljava/lang/String;
    :cond_a
    :goto_1
    const/4 v2, 0x0

    .line 1686
    .local v2, "ext":Ljava/lang/String;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v10, v10, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v10, :cond_b

    .line 1687
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v10, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v2

    .line 1688
    :cond_b
    if-nez v2, :cond_c

    .line 1689
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mail."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".mailextension"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1690
    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d

    .line 1691
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1694
    :cond_d
    const/16 v10, 0xfa

    :try_start_1
    invoke-direct {p0, v0, v10}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/sun/mail/smtp/SMTPSendFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1713
    return-void

    .line 1635
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "ext":Ljava/lang/String;
    :cond_e
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v10}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v5

    .restart local v5    # "me":Ljavax/mail/Address;
    goto/16 :goto_0

    .line 1640
    :cond_f
    new-instance v10, Ljavax/mail/MessagingException;

    .line 1641
    const-string v11, "can\'t determine local email address"

    .line 1640
    invoke-direct {v10, v11}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1674
    .end local v5    # "me":Ljavax/mail/Address;
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v9    # "submitter":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1675
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1676
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ignoring invalid submitter: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1676
    invoke-virtual {v10, v11, v12, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1695
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v9    # "submitter":Ljava/lang/String;
    .restart local v2    # "ext":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1696
    .local v1, "ex":Lcom/sun/mail/smtp/SMTPSendFailedException;
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getReturnCode()I

    move-result v7

    .line 1697
    .local v7, "retCode":I
    sparse-switch v7, :sswitch_data_0

    .line 1711
    :goto_2
    throw v1

    .line 1701
    :sswitch_0
    :try_start_2
    new-instance v10, Lcom/sun/mail/smtp/SMTPSenderFailedException;

    .line 1702
    new-instance v11, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v11, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v0, v7, v12}, Lcom/sun/mail/smtp/SMTPSenderFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1701
    invoke-virtual {v1, v10}, Lcom/sun/mail/smtp/SMTPSendFailedException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1704
    :catch_2
    move-exception v10

    goto :goto_2

    .line 1697
    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x226 -> :sswitch_0
        0x227 -> :sswitch_0
        0x229 -> :sswitch_0
    .end sparse-switch
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    if-nez v0, :cond_0

    .line 1383
    invoke-super/range {p0 .. p5}, Ljavax/mail/Transport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1387
    :cond_0
    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 654
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 655
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".auth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 654
    invoke-static {v5, v6, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v2

    .line 663
    .local v2, "useAuth":Z
    if-eqz v2, :cond_2

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 664
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "need username and password for authentication"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 734
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 669
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 670
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ehlo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 669
    invoke-static {v5, v6, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    .line 671
    .local v3, "useEhlo":Z
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "useEhlo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", useAuth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 678
    :cond_3
    if-ne p2, v8, :cond_4

    .line 679
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 680
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".port"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 679
    invoke-static {v5, v6, v7}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result p2

    .line 681
    :cond_4
    if-ne p2, v8, :cond_5

    .line 682
    iget p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 684
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 685
    :cond_6
    const-string p1, "localhost"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 691
    :cond_7
    const/4 v0, 0x0

    .line 694
    .local v0, "connected":Z
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v5, :cond_e

    .line 695
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    .line 699
    :goto_1
    const/4 v1, 0x0

    .line 700
    .local v1, "succeed":Z
    if-eqz v3, :cond_8

    .line 701
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v1

    .line 702
    :cond_8
    if-nez v1, :cond_9

    .line 703
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    .line 705
    :cond_9
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-eqz v5, :cond_b

    .line 706
    :cond_a
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v5, v5, Ljavax/net/ssl/SSLSocket;

    if-eqz v5, :cond_10

    .line 707
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "STARTTLS requested but already using SSL"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 725
    :cond_b
    :goto_2
    if-nez v2, :cond_c

    if-eqz p3, :cond_12

    if-eqz p4, :cond_12

    .line 726
    :cond_c
    const-string v5, "AUTH"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 727
    const-string v5, "AUTH=LOGIN"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 728
    :cond_d
    invoke-direct {p0, p3, p4}, Lcom/sun/mail/smtp/SMTPTransport;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 739
    if-nez v0, :cond_1

    .line 741
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 742
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 697
    .end local v1    # "succeed":Z
    :cond_e
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 736
    :catchall_0
    move-exception v4

    .line 739
    if-nez v0, :cond_f

    .line 741
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 746
    :cond_f
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 654
    .end local v0    # "connected":Z
    .end local v2    # "useAuth":Z
    .end local v3    # "useEhlo":Z
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 708
    .restart local v0    # "connected":Z
    .restart local v1    # "succeed":Z
    .restart local v2    # "useAuth":Z
    .restart local v3    # "useEhlo":Z
    :cond_10
    :try_start_7
    const-string v5, "STARTTLS"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 709
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 716
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    goto :goto_2

    .line 717
    :cond_11
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-eqz v5, :cond_b

    .line 718
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "STARTTLS required but not supported"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 719
    new-instance v4, Ljavax/mail/MessagingException;

    .line 720
    const-string v5, "STARTTLS is required but host does not support STARTTLS"

    .line 719
    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 733
    :cond_12
    const/4 v0, 0x1

    .line 739
    if-nez v0, :cond_13

    .line 741
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_13
    :goto_4
    move v0, v4

    .line 734
    goto/16 :goto_0

    .line 742
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v1    # "succeed":Z
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method protected rcptTo()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1738
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 1739
    .local v30, "valid":Ljava/util/Vector;
    new-instance v31, Ljava/util/Vector;

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    .line 1740
    .local v31, "validUnsent":Ljava/util/Vector;
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 1741
    .local v18, "invalid":Ljava/util/Vector;
    const/16 v26, -0x1

    .line 1742
    .local v26, "retCode":I
    const/16 v24, 0x0

    .line 1743
    .local v24, "mex":Ljavax/mail/MessagingException;
    const/16 v27, 0x0

    .line 1744
    .local v27, "sendFailed":Z
    const/16 v29, 0x0

    .line 1745
    .local v29, "sfex":Ljavax/mail/MessagingException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1746
    const/16 v28, 0x0

    .line 1747
    .local v28, "sendPartial":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v3, v3, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v3, :cond_0

    .line 1748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v3, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v28

    .line 1749
    :cond_0
    if-nez v28, :cond_1

    .line 1750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 1751
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sendpartial"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1750
    invoke-static {v3, v4, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v28

    .line 1752
    :cond_1
    if-eqz v28, :cond_2

    .line 1753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "sendPartial set"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1755
    :cond_2
    const/4 v12, 0x0

    .line 1756
    .local v12, "dsn":Z
    const/16 v25, 0x0

    .line 1757
    .local v25, "notify":Ljava/lang/String;
    const-string v3, "DSN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v3, v3, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v3, :cond_3

    .line 1759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v3, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v25

    .line 1760
    :cond_3
    if-nez v25, :cond_4

    .line 1761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dsn.notify"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1763
    :cond_4
    if-eqz v25, :cond_5

    .line 1764
    const/4 v12, 0x1

    .line 1768
    :cond_5
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v3, v3

    if-lt v15, v3, :cond_b

    .line 1862
    if-eqz v28, :cond_6

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1863
    const/16 v27, 0x1

    .line 1866
    :cond_6
    if-eqz v27, :cond_1b

    .line 1868
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1872
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1873
    const/4 v15, 0x0

    .line 1874
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v19

    if-lt v0, v3, :cond_19

    .line 1876
    const/16 v19, 0x0

    :goto_2
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v19

    if-lt v0, v3, :cond_1a

    .line 1902
    .end local v19    # "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 1904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "Verified Addresses"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1905
    const/16 v21, 0x0

    .local v21, "l":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_1e

    .line 1909
    .end local v21    # "l":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 1910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "Valid Unsent Addresses"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1911
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    move/from16 v0, v19

    if-lt v0, v3, :cond_1f

    .line 1915
    .end local v19    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v3, v3

    if-lez v3, :cond_9

    .line 1916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "Invalid Addresses"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1917
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v3, v3

    move/from16 v0, v20

    if-lt v0, v3, :cond_20

    .line 1924
    .end local v20    # "k":I
    :cond_9
    if-eqz v27, :cond_21

    .line 1925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 1926
    const-string v4, "Sending failed because of invalid destination addresses"

    .line 1925
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1927
    const/4 v4, 0x2

    .line 1928
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1929
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v3, p0

    .line 1927
    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1933
    .local v23, "lsr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    move/from16 v22, v0

    .line 1935
    .local v22, "lrc":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_a

    .line 1936
    const-string v3, "RSET"

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    :cond_a
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1947
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1950
    :goto_7
    new-instance v3, Ljavax/mail/SendFailedException;

    const-string v4, "Invalid Addresses"

    .line 1951
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1952
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v5, v24

    .line 1950
    invoke-direct/range {v3 .. v8}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v3

    .line 1770
    .end local v22    # "lrc":I
    .end local v23    # "lsr":Ljava/lang/String;
    :cond_b
    const/16 v29, 0x0

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v17, v3, v15

    check-cast v17, Ljavax/mail/internet/InternetAddress;

    .line 1772
    .local v17, "ia":Ljavax/mail/internet/InternetAddress;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RCPT TO:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1773
    .local v11, "cmd":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 1774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " NOTIFY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1776
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v26

    .line 1779
    sparse-switch v26, :sswitch_data_0

    .line 1827
    const/16 v3, 0x190

    move/from16 v0, v26

    if-lt v0, v3, :cond_14

    const/16 v3, 0x1f3

    move/from16 v0, v26

    if-gt v0, v3, :cond_14

    .line 1829
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1847
    :goto_8
    if-nez v28, :cond_d

    .line 1848
    const/16 v27, 0x1

    .line 1850
    :cond_d
    new-instance v29, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1851
    .end local v29    # "sfex":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1852
    .restart local v29    # "sfex":Ljavax/mail/MessagingException;
    if-nez v24, :cond_18

    .line 1853
    move-object/from16 v24, v29

    .line 1768
    :cond_e
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 1781
    :sswitch_0
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1782
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-eqz v3, :cond_e

    .line 1789
    new-instance v29, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    .line 1790
    .end local v29    # "sfex":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1789
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1791
    .restart local v29    # "sfex":Ljavax/mail/MessagingException;
    if-nez v24, :cond_f

    .line 1792
    move-object/from16 v24, v29

    goto :goto_9

    .line 1794
    :cond_f
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_9

    .line 1799
    :sswitch_1
    if-nez v28, :cond_10

    .line 1800
    const/16 v27, 0x1

    .line 1801
    :cond_10
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1803
    new-instance v29, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1804
    .end local v29    # "sfex":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1803
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1805
    .restart local v29    # "sfex":Ljavax/mail/MessagingException;
    if-nez v24, :cond_11

    .line 1806
    move-object/from16 v24, v29

    goto :goto_9

    .line 1808
    :cond_11
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_9

    .line 1813
    :sswitch_2
    if-nez v28, :cond_12

    .line 1814
    const/16 v27, 0x1

    .line 1815
    :cond_12
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1817
    new-instance v29, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1818
    .end local v29    # "sfex":Ljavax/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1817
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1819
    .restart local v29    # "sfex":Ljavax/mail/MessagingException;
    if-nez v24, :cond_13

    .line 1820
    move-object/from16 v24, v29

    goto :goto_9

    .line 1822
    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_9

    .line 1830
    :cond_14
    const/16 v3, 0x1f4

    move/from16 v0, v26

    if-lt v0, v3, :cond_15

    const/16 v3, 0x257

    move/from16 v0, v26

    if-gt v0, v3, :cond_15

    .line 1832
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1835
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "got response code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1837
    const-string v5, ", with response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1836
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1838
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1839
    .local v10, "_lsr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1840
    .local v9, "_lrc":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_17

    .line 1841
    const-string v3, "RSET"

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1842
    :cond_17
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1843
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1844
    new-instance v3, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-direct {v3, v0, v11, v1, v10}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v3

    .line 1855
    .end local v9    # "_lrc":I
    .end local v10    # "_lsr":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto/16 :goto_9

    .line 1875
    .end local v11    # "cmd":Ljava/lang/String;
    .end local v17    # "ia":Ljavax/mail/internet/InternetAddress;
    .restart local v19    # "j":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/Address;

    aput-object v3, v4, v15

    .line 1874
    add-int/lit8 v19, v19, 0x1

    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    .line 1877
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/Address;

    aput-object v3, v4, v15

    .line 1876
    add-int/lit8 v19, v19, 0x1

    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_2

    .line 1878
    .end local v19    # "j":I
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v3, :cond_1c

    if-eqz v28, :cond_1d

    .line 1879
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_1c

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 1882
    :cond_1c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1883
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1886
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1890
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1894
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1897
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto/16 :goto_3

    .line 1906
    .restart local v21    # "l":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v5, v5, v21

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1905
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 1912
    .end local v21    # "l":I
    .restart local v19    # "j":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v5, v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1911
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 1918
    .end local v19    # "j":I
    .restart local v20    # "k":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v5, v5, v20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1917
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_6

    .line 1937
    .end local v20    # "k":I
    .restart local v22    # "lrc":I
    .restart local v23    # "lsr":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1940
    .local v13, "ex":Ljavax/mail/MessagingException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1946
    :goto_a
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1947
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto/16 :goto_7

    .line 1941
    :catch_1
    move-exception v14

    .line 1943
    .local v14, "ex2":Ljavax/mail/MessagingException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "close failed"

    invoke-virtual {v3, v4, v5, v14}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    .line 1945
    .end local v13    # "ex":Ljavax/mail/MessagingException;
    .end local v14    # "ex2":Ljavax/mail/MessagingException;
    :catchall_0
    move-exception v3

    .line 1946
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1947
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1948
    throw v3

    .line 1954
    .end local v22    # "lrc":I
    .end local v23    # "lsr":Ljava/lang/String;
    :cond_21
    return-void

    .line 1779
    :sswitch_data_0
    .sparse-switch
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0x1c2 -> :sswitch_2
        0x1c3 -> :sswitch_2
        0x1c4 -> :sswitch_2
        0x1f5 -> :sswitch_1
        0x1f7 -> :sswitch_1
        0x226 -> :sswitch_1
        0x227 -> :sswitch_1
        0x228 -> :sswitch_2
        0x229 -> :sswitch_1
    .end sparse-switch
.end method

.method protected readServerResponse()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v13, 0x0

    const/4 v9, -0x1

    .line 2274
    sget-boolean v10, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 2275
    :cond_0
    const-string v8, ""

    .line 2276
    .local v8, "serverResponse":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2277
    .local v6, "returnCode":I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v10, 0x64

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2282
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 2285
    .local v3, "line":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v10}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2286
    if-nez v3, :cond_3

    .line 2287
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2288
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 2289
    const-string v8, "[EOF]"

    .line 2290
    :cond_2
    iput-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2291
    const/4 v10, -0x1

    iput v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2292
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "EOF: {0}"

    invoke-virtual {v10, v11, v12, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2342
    :goto_0
    return v9

    .line 2295
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2296
    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2297
    invoke-direct {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2299
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2314
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v11, :cond_5

    .line 2316
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_1
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    move v7, v6

    .line 2337
    .end local v6    # "returnCode":I
    .local v7, "returnCode":I
    :goto_1
    if-ne v7, v9, :cond_4

    .line 2338
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v11, "bad server response: {0}"

    invoke-virtual {v9, v10, v11, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2340
    :cond_4
    iput-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2341
    iput v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    move v6, v7

    .end local v7    # "returnCode":I
    .restart local v6    # "returnCode":I
    move v9, v7

    .line 2342
    goto :goto_0

    .line 2300
    :catch_0
    move-exception v2

    .line 2301
    .local v2, "ioex":Ljava/io/IOException;
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v11, "exception reading response"

    invoke-virtual {v9, v10, v11, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2303
    const-string v9, ""

    iput-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2304
    iput v13, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2305
    new-instance v9, Ljavax/mail/MessagingException;

    const-string v10, "Exception reading response"

    invoke-direct {v9, v10, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 2317
    .end local v2    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 2319
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2324
    :goto_2
    const/4 v6, -0x1

    move v7, v6

    .end local v6    # "returnCode":I
    .restart local v7    # "returnCode":I
    goto :goto_1

    .line 2320
    .end local v7    # "returnCode":I
    .restart local v6    # "returnCode":I
    :catch_2
    move-exception v4

    .line 2322
    .local v4, "mex":Ljavax/mail/MessagingException;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "close failed"

    invoke-virtual {v10, v11, v12, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2325
    .end local v4    # "mex":Ljavax/mail/MessagingException;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 2327
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2332
    :goto_3
    const/4 v6, -0x1

    move v7, v6

    .line 2334
    .end local v6    # "returnCode":I
    .restart local v7    # "returnCode":I
    goto :goto_1

    .line 2328
    .end local v7    # "returnCode":I
    .restart local v6    # "returnCode":I
    :catch_4
    move-exception v4

    .line 2330
    .restart local v4    # "mex":Ljavax/mail/MessagingException;
    iget-object v10, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "close failed"

    invoke-virtual {v10, v11, v12, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2335
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v4    # "mex":Ljavax/mail/MessagingException;
    :cond_5
    const/4 v6, -0x1

    move v7, v6

    .end local v6    # "returnCode":I
    .restart local v7    # "returnCode":I
    goto :goto_1
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "allowed"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    if-eqz v0, :cond_3

    .line 1051
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v11

    .line 1054
    .local v11, "serviceHost":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    if-nez v0, :cond_0

    .line 1057
    :try_start_0
    const-string v0, "com.sun.mail.smtp.SMTPSaslAuthenticator"

    .line 1056
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 1058
    .local v10, "sac":Ljava/lang/Class;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1059
    const-class v3, Lcom/sun/mail/smtp/SMTPTransport;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 1060
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 1061
    const-class v3, Ljava/util/Properties;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 1062
    const-class v3, Lcom/sun/mail/util/MailLogger;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 1063
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1058
    invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 1066
    .local v7, "c":Ljava/lang/reflect/Constructor;
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1067
    aput-object p0, v0, v2

    const/4 v2, 0x1

    .line 1068
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 1069
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 1070
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 1071
    aput-object v11, v0, v2

    .line 1065
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/smtp/SaslAuthenticator;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v7    # "c":Ljava/lang/reflect/Constructor;
    .end local v10    # "sac":Ljava/lang/Class;
    :cond_0
    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    .line 1084
    new-instance v13, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1085
    .local v13, "v":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, p1

    if-lt v9, v0, :cond_4

    .line 1100
    .end local v9    # "i":I
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1102
    .local v1, "mechs":[Ljava/lang/String;
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "SASL AUTH command trace suppressed"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sun/mail/smtp/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1108
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1106
    .end local v1    # "mechs":[Ljava/lang/String;
    .end local v13    # "v":Ljava/util/List;
    :goto_2
    return v0

    .line 1053
    .end local v11    # "serviceHost":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .restart local v11    # "serviceHost":Ljava/lang/String;
    goto/16 :goto_0

    .line 1073
    :catch_0
    move-exception v8

    .line 1074
    .local v8, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t load SASL authenticator"

    invoke-virtual {v0, v2, v3, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1076
    const/4 v0, 0x0

    goto :goto_2

    .line 1086
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v9    # "i":I
    .restart local v13    # "v":Ljava/util/List;
    :cond_4
    aget-object v0, p1, v9

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1087
    aget-object v0, p1, v9

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1090
    .end local v9    # "i":I
    .end local v13    # "v":Ljava/util/List;
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .restart local v13    # "v":Ljava/util/List;
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1093
    .local v6, "a":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1094
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v12, "st":Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1107
    .end local v6    # "a":Ljava/lang/String;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "mechs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1108
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1109
    throw v0
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2247
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2248
    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 13
    .param p1, "message"    # Ljavax/mail/Message;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    .prologue
    .line 1150
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageStart(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    .line 1155
    instance-of v1, p1, Ljavax/mail/internet/MimeMessage;

    if-nez v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Can only send RFC822 msgs"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1157
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "SMTP can only send RFC822 messages"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    .end local p1    # "message":Ljavax/mail/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local p1    # "message":Ljavax/mail/Message;
    :cond_0
    :try_start_1
    const-string v1, ""

    goto :goto_0

    .line 1159
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v1, p2

    if-lt v10, v1, :cond_2

    .line 1165
    array-length v1, p2

    if-nez v1, :cond_4

    .line 1166
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v2, "No recipient addresses"

    invoke-direct {v1, v2}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_2
    aget-object v1, p2, v10

    instance-of v1, v1, Ljavax/mail/internet/InternetAddress;

    if-nez v1, :cond_3

    .line 1161
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1162
    const-string v3, " is not an InternetAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1159
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1168
    :cond_4
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    move-object v1, v0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1169
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1170
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1171
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    .line 1173
    const/4 v12, 0x0

    .line 1174
    .local v12, "use8bit":Z
    instance-of v1, p1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_5

    .line 1175
    check-cast p1, Lcom/sun/mail/smtp/SMTPMessage;

    .end local p1    # "message":Ljavax/mail/Message;
    invoke-virtual {p1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v12

    .line 1176
    :cond_5
    if-nez v12, :cond_6

    .line 1177
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".allow8bitmime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1177
    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v12

    .line 1179
    :cond_6
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1180
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "use8bit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1181
    :cond_7
    if-eqz v12, :cond_8

    const-string v1, "8BITMIME"

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1182
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 1186
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1194
    :cond_8
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    .line 1195
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    .line 1196
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    .line 1198
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-eqz v1, :cond_a

    .line 1201
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Sending partially failed because of invalid destination addresses"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1204
    const/4 v2, 0x3

    .line 1205
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1206
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    .line 1203
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1208
    new-instance v1, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v2, "."

    iget v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1209
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1210
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1208
    invoke-direct/range {v1 .. v8}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1216
    :catch_0
    move-exception v11

    .line 1217
    .local v11, "mex":Ljavax/mail/MessagingException;
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "MessagingException while sending"

    invoke-virtual {v1, v2, v3, v11}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1219
    invoke-virtual {v11}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_9

    .line 1222
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "nested IOException, closing"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1224
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1227
    :cond_9
    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    .line 1228
    const/4 v2, 0x2

    .line 1229
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1230
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    .line 1228
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1232
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1247
    .end local v11    # "mex":Ljavax/mail/MessagingException;
    :catchall_1
    move-exception v1

    .line 1249
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1251
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1252
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1253
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1254
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1255
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1212
    :cond_a
    :try_start_8
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "message successfully delivered to mail server"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1213
    const/4 v2, 0x1

    .line 1214
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1215
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    .line 1213
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1249
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1252
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1253
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1254
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1256
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageEnd()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1257
    monitor-exit p0

    return-void

    .line 1233
    :catch_1
    move-exception v9

    .line 1234
    .local v9, "ex":Ljava/io/IOException;
    :try_start_a
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "IOException while sending, closing"

    invoke-virtual {v1, v2, v3, v9}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1238
    :try_start_b
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_b
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1240
    :goto_4
    :try_start_c
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    .line 1241
    const/4 v2, 0x2

    .line 1242
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1243
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, p0

    .line 1241
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1245
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException while sending message"

    invoke-direct {v1, v2, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1225
    .end local v9    # "ex":Ljava/io/IOException;
    .restart local v11    # "mex":Ljavax/mail/MessagingException;
    :catch_2
    move-exception v1

    goto :goto_3

    .line 1239
    .end local v11    # "mex":Ljavax/mail/MessagingException;
    .restart local v9    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_4

    .line 1187
    .end local v9    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v1

    goto/16 :goto_2
.end method

.method public declared-synchronized setAuthorizationID(Ljava/lang/String;)V
    .locals 1
    .param p1, "authzid"    # Ljava/lang/String;

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "localhost"    # Ljava/lang/String;

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNTLMDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "ntlmDomain"    # Ljava/lang/String;

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNoopStrict(Z)V
    .locals 1
    .param p1, "noopStrict"    # Z

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .locals 1
    .param p1, "reportSuccess"    # Z

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequireStartTLS(Z)V
    .locals 1
    .param p1, "requireStartTLS"    # Z

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSASLEnabled(Z)V
    .locals 1
    .param p1, "enableSASL"    # Z

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSASLMechanisms([Ljava/lang/String;)V
    .locals 2
    .param p1, "mechanisms"    # [Ljava/lang/String;

    .prologue
    .line 443
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 444
    :try_start_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    .line 445
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .locals 1
    .param p1, "saslRealm"    # Ljava/lang/String;

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartTLS(Z)V
    .locals 1
    .param p1, "useStartTLS"    # Z

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseCanonicalHostName(Z)V
    .locals 1
    .param p1, "useCanonicalHostName"    # Z

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseRset(Z)V
    .locals 1
    .param p1, "useRset"    # Z

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2219
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 2219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected simpleCommand([B)I
    .locals 1
    .param p1, "cmd"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2233
    sget-boolean v0, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2234
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2235
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    return v0
.end method

.method protected startTLS()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1992
    const-string v1, "STARTTLS"

    const/16 v2, 0xdc

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1995
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 1996
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mail."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1995
    invoke-static {v1, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1997
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    return-void

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "ioex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 2000
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .locals 7
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2413
    sget-boolean v5, Lcom/sun/mail/smtp/SMTPTransport;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2414
    :cond_0
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v5, :cond_2

    .line 2430
    :cond_1
    :goto_0
    return v3

    .line 2416
    :cond_2
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const-string v6, "AUTH"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2417
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2419
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2420
    .local v1, "st":Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2426
    const-string v5, "LOGIN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AUTH=LOGIN"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2427
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v5, "use AUTH=LOGIN hack"

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    move v3, v4

    .line 2428
    goto :goto_0

    .line 2421
    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 2422
    .local v2, "tok":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 2423
    goto :goto_0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2384
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
